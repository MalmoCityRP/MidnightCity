local QBCore = exports['qb-core']:GetCoreObject()
local Accounts = {}

function ExploitBan(id, reason)
	MySQL.insert('INSERT INTO bans (name, license, discord, ip, reason, expire, bannedby) VALUES (?, ?, ?, ?, ?, ?, ?)', {
		GetPlayerName(id),
		QBCore.Functions.GetIdentifier(id, 'license'),
		QBCore.Functions.GetIdentifier(id, 'discord'),
		QBCore.Functions.GetIdentifier(id, 'ip'),
		reason,
		2147483647,
		'qb-management'
	})
	TriggerEvent('qb-log:server:CreateLog', 'bans', 'Player Banned', 'red', string.format('%s was banned by %s for %s', GetPlayerName(id), 'qb-management', reason), true)
	DropPlayer(id, 'You were permanently banned by the server for: Exploiting')
end

function GetAccountName(account)
	return QBCore.Shared.Jobs[account].label
end

function GetAccount(account)
	return exports['Renewed-Banking']:getAccountMoney(GetAccountName(account))
end

function AddMoney(account, amount)
	exports['Renewed-Banking']:addAccountMoney(GetAccountName(account), amount)
	exports['Renewed-Banking']:handleTransaction(GetAccountName(account), 'Boss Menu Deposit', amount, 'Added money from the boss menu.', 'Boss', GetAccountName(account), 'deposit')
end

function RemoveMoney(account, amount)
	local isRemoved = false
	if amount > 0 then
		isRemoved = exports['Renewed-Banking']:removeAccountMoney(GetAccountName(account), amount)
		exports['Renewed-Banking']:handleTransaction(GetAccountName(account), 'Boss Menu Withdraw', amount, 'Removed money from the boss menu.', 'Boss', GetAccountName(account), 'withdraw')
	end
	return isRemoved
end

-- MySQL.ready(function ()
-- 	local bossmenu = MySQL.query.await('SELECT job_name,amount FROM management_funds WHERE type = "boss"', {})
-- 	if not bossmenu then return end

-- 	for _,v in ipairs(bossmenu) do
-- 		Accounts[v.job_name] = v.amount
-- 	end
-- end)

RegisterNetEvent("qb-bossmenu:server:withdrawMoney", function(amount)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'withdrawMoney Exploiting') return end

	local job = Player.PlayerData.job.name
	if RemoveMoney(job, amount) then
		Player.Functions.AddMoney("cash", amount, 'Boss menu withdraw')
		TriggerEvent('qb-log:server:CreateLog', 'bossmenu', 'Withdraw Money', "blue", Player.PlayerData.name.. "Withdrawal $" .. amount .. ' (' .. job .. ')', false)
		TriggerClientEvent('QBCore:Notify', src, "You have withdrawn: $" ..amount, "success")
	else
		TriggerClientEvent('QBCore:Notify', src, "You dont have enough money in the account!", "error")
	end

	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

RegisterNetEvent("qb-bossmenu:server:removeAccountMoney", function(account, amount)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	if RemoveMoney(account, amount) then
		Player.Functions.AddMoney("cash", amount, 'Boss menu withdraw')
		TriggerEvent('qb-log:server:CreateLog', 'bossmenu', 'Payment', "blue", Player.PlayerData.name.. "Paid $" .. amount .. ' (' .. account .. ')', false)
		TriggerClientEvent('QBCore:Notify', src, "Your Soceity has paid: $" ..amount, "success")
	else
		TriggerClientEvent('QBCore:Notify', src, "Your society dont have enough money in the account!", "error")
	end
end)

RegisterNetEvent("qb-bossmenu:server:depositMoney", function(amount)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'depositMoney Exploiting') return end

	if Player.Functions.RemoveMoney("cash", amount) then
		local job = Player.PlayerData.job.name
		AddMoney(job, amount)
		TriggerEvent('qb-log:server:CreateLog', 'bossmenu', 'Deposit Money', "blue", Player.PlayerData.name.. "Deposit $" .. amount .. ' (' .. job .. ')', false)
		TriggerClientEvent('QBCore:Notify', src, "You have deposited: $" ..amount, "success")
	else
		TriggerClientEvent('QBCore:Notify', src, "You dont have enough money to add!", "error")
	end

	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

QBCore.Functions.CreateCallback('qb-bossmenu:server:GetAccount', function(_, cb, jobname)
	local result = GetAccount(jobname)
	cb(result)
end)

-- Get Employees
QBCore.Functions.CreateCallback('qb-bossmenu:server:GetEmployees', function(source, cb, jobname)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'GetEmployees Exploiting') return end

	local employees = {}

	--local players = MySQL.query.await("SELECT * FROM `players` WHERE `job` LIKE '%".. jobname .."%'", {})
	local players = MySQL.query.await("SELECT employees FROM `player_jobs` WHERE `jobname` LIKE '%".. jobname .."%'", {})
	players = json.decode(players[1].employees)
	--if players[1] ~= nil then
		for _, value in pairs(players) do
			local isOnline = QBCore.Functions.GetPlayerByCitizenId(value.cid)

			if isOnline and isOnline.PlayerData.job.name == jobname then
				local duty = isOnline.PlayerData.job.onduty
				employees[#employees+1] = {
				empSource = isOnline.PlayerData.citizenid,
				grade = value.grade,
				isboss = QBCore.Shared.Jobs[jobname].grades[tostring(value.grade)].isboss,
				name = (duty and '🟢 ' or '❌ ') .. isOnline.PlayerData.charinfo.firstname .. ' ' .. isOnline.PlayerData.charinfo.lastname,
				duty = duty,
				}
			else
				employees[#employees+1] = {
				empSource = value.cid,
				grade =  value.grade,
				isboss = QBCore.Shared.Jobs[jobname].grades[tostring(value.grade)].isboss,
				name = '❌ ' ..  value.name
				}
			end
		end
		table.sort(employees, function(a, b)
            return a.grade > b.grade
        end)
	--end
	cb(employees)
end)

-- Grade Change
RegisterNetEvent('qb-bossmenu:server:GradeUpdate', function(data)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local Employee = QBCore.Functions.GetPlayerByCitizenId(data.cid)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'GradeUpdate Exploiting') return end
	if data.grade > Player.PlayerData.job.grade.level then TriggerClientEvent('QBCore:Notify', src, "You cannot promote to this rank!", "error") return end
	if Employee then
		if Employee.Functions.SetJob(Player.PlayerData.job.name, data.grade) then
			TriggerEvent('qb-phone:server:gradesHandler', Player.PlayerData.job.name, data.cid, data.grade, src)
			TriggerClientEvent('QBCore:Notify', src, "Sucessfulluy promoted!", "success")
			TriggerClientEvent('QBCore:Notify', Employee.PlayerData.source, "You have been promoted to" ..data.gradename..".", "success")
		else
			TriggerClientEvent('QBCore:Notify', src, "Promotion grade does not exist.", "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', src, "Civilian not in city.", "error")
	end
	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

-- Fire Employee
RegisterNetEvent('qb-bossmenu:server:FireEmployee', function(target)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local Employee = QBCore.Functions.GetPlayerByCitizenId(target)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'FireEmployee Exploiting') return end

	if Employee then
		if target ~= Player.PlayerData.citizenid then
			if Employee.PlayerData.job.grade.level > Player.PlayerData.job.grade.level then TriggerClientEvent('QBCore:Notify', src, "You cannot fire this citizen!", "error") return end
			local cJob = Employee.PlayerData.job.name
			if Employee.Functions.SetJob("unemployed", '0') then
				exports['qb-phone']:fireUser(cJob, target)
				TriggerEvent("qb-log:server:CreateLog", "bossmenu", "Job Fire", "red", Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. ' successfully fired ' .. Employee.PlayerData.charinfo.firstname .. " " .. Employee.PlayerData.charinfo.lastname .. " (" .. Player.PlayerData.job.name .. ")", false)
				TriggerClientEvent('QBCore:Notify', src, "Employee fired!", "success")
				TriggerClientEvent('QBCore:Notify', Employee.PlayerData.source , "You have been fired! Good luck.", "error")
			else
				TriggerClientEvent('QBCore:Notify', src, "Error..", "error")
			end
		else
			TriggerClientEvent('QBCore:Notify', src, "You can\'t fire yourself", "error")
		end
	else
		local player = MySQL.query.await('SELECT * FROM players WHERE citizenid = ? LIMIT 1', { target })
		if player[1] ~= nil then
			Employee = player[1]
			Employee.job = json.decode(Employee.job)
			if Employee.job.grade.level > Player.PlayerData.job.grade.level then TriggerClientEvent('QBCore:Notify', src, "You cannot fire this citizen!", "error") return end
			local job = {}
			job.name = "unemployed"
			job.label = "Unemployed"
			job.payment = QBCore.Shared.Jobs[job.name].grades['0'].payment or 500
			job.onduty = true
			job.isboss = false
			job.grade = {}
			job.grade.name = nil
			job.grade.level = 0
			MySQL.update('UPDATE players SET job = ? WHERE citizenid = ?', { json.encode(job), target })
			exports['qb-phone']:fireUser(Employee.job.name, target)
			TriggerClientEvent('QBCore:Notify', src, "Employee fired!", "success")
			TriggerEvent("qb-log:server:CreateLog", "bossmenu", "Job Fire", "red", Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. ' successfully fired ' .. Employee.PlayerData.charinfo.firstname .. " " .. Employee.PlayerData.charinfo.lastname .. " (" .. Player.PlayerData.job.name .. ")", false)
		else
			TriggerClientEvent('QBCore:Notify', src, "Civilian not in city.", "error")
		end
	end
	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

-- Recruit Player
RegisterNetEvent('qb-bossmenu:server:HireEmployee', function(recruit)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local Target = QBCore.Functions.GetPlayer(recruit)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'HireEmployee Exploiting') return end

	if Target and Target.Functions.SetJob(Player.PlayerData.job.name, 0) then
		exports['qb-phone']:hireUser(Player.PlayerData.job.name, Target.PlayerData.citizenid, 0)
		TriggerClientEvent('QBCore:Notify', src, "You hired " .. (Target.PlayerData.charinfo.firstname .. ' ' .. Target.PlayerData.charinfo.lastname) .. " come " .. Player.PlayerData.job.label .. "", "success")
		TriggerClientEvent('QBCore:Notify', Target.PlayerData.source , "You were hired as " .. Player.PlayerData.job.label .. "", "success")
		TriggerEvent('qb-log:server:CreateLog', 'bossmenu', 'Recruit', "lightgreen", (Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname).. " successfully recruited " .. (Target.PlayerData.charinfo.firstname .. ' ' .. Target.PlayerData.charinfo.lastname) .. ' (' .. Player.PlayerData.job.name .. ')', false)
	end
	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

-- Get closest player sv
QBCore.Functions.CreateCallback('qb-bossmenu:getplayers', function(source, cb)
	local src = source
	local players = {}
	local PlayerPed = GetPlayerPed(src)
	local pCoords = GetEntityCoords(PlayerPed)
	for _, v in pairs(QBCore.Functions.GetPlayers()) do
		local targetped = GetPlayerPed(v)
		local tCoords = GetEntityCoords(targetped)
		local dist = #(pCoords - tCoords)
		if PlayerPed ~= targetped and dist < 10 then
			local ped = QBCore.Functions.GetPlayer(v)
			players[#players+1] = {
			id = v,
			coords = GetEntityCoords(targetped),
			name = ped.PlayerData.charinfo.firstname .. " " .. ped.PlayerData.charinfo.lastname,
			citizenid = ped.PlayerData.citizenid,
			sources = GetPlayerPed(ped.PlayerData.source),
			sourceplayer = ped.PlayerData.source
			}
		end
	end
		table.sort(players, function(a, b)
			return a.name < b.name
		end)
	cb(players)
end)
