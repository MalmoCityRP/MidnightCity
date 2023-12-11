function Radio:SendSvelteMessage(name, data)
    if not Shared.Ready then return end
    SendNUIMessage({
        action = name,
        data = data
    })
end

RegisterNUICallback('join', function(data, cb)
    local rchannel = tonumber(data)
    JoinRadio(rchannel)
    cb("ok")
end)

RegisterNUICallback('leave', function(_, cb)
    if Radio.RadioChannel ~= 0 then
        Radio:leaveradio()
    end
    cb("ok")
end)

RegisterNUICallback("volumeChange", function(data, cb)
    data = tonumber(data)
    Radio:Notify(locale('volume_notify_title'), locale('volume_notify_description', data), 'success')
	exports["pma-voice"]:setRadioVolume(data)
    Radio.Volume = data
    cb('ok')
end)

RegisterNUICallback("hideUI", function(_, cb)
    TriggerEvent('mm_radio:client:remove')
    cb('ok')
end)

RegisterNUICallback('addFav', function(data, cb)
    data = tonumber(data)
    if Radio.RadioChannel == data then
        Radio.favourite[#Radio.favourite+1] = data
        Radio.userData.favourite[#Radio.userData.favourite+1] = data
        SetResourceKvp('radioSettings', json.encode(Radio.userData))
    end
    cb("ok")
end)

RegisterNUICallback('removeFav', function(data, cb)
    data = tonumber(data)
    if Radio.RadioChannel == data then
        for index, val in ipairs(Radio.favourite) do
            if val == data then
                table.remove(Radio.favourite, index)
            end
        end
        for index, val in ipairs(Radio.userData.favourite) do
            if val == data then
                table.remove(Radio.userData.favourite, index)
            end
        end
        SetResourceKvp('radioSettings', json.encode(Radio.userData))
    end
    cb("ok")
end)

RegisterNUICallback('showPlayerList', function(data, cb)
    local input = lib.inputDialog('Chose Nickname', {{type = 'input', label = 'Name', description = "Leave blank to use your full name."}})
    if not input or not input[1] then return end
    TriggerServerEvent('radio:updateNickname', input[1], data.channel)
    -- Radio.userData.playerlist.show = data
    -- SetResourceKvp('radioSettings', json.encode(Radio.userData))
end)

RegisterNUICallback('updatePlayerListPosition', function(data, cb)
    Radio.userData.playerlist.coords = {
        x = data.x,
        y = data.y
    }
    SetResourceKvp('radioSettings', json.encode(Radio.userData))
end)