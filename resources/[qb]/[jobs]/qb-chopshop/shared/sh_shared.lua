Shared = {}

Shared.Debug = false

--- Settings related to utils: notification, phone notification, ...
Shared.Notify = 'qb' -- 'ox' for ox_lib or 'qb' for QBCore.Functions.Notify
Shared.Phone = 'QBCore' -- 'QBCore' or 'GKS' or 'Qs' or 'lb-phone' or edit utils files for others
Shared.Inventory = 'qb' -- 'ox_inventory' or 'qb'
Shared.Target = 'qb' -- 'ox' or 'qb'
Shared.FuelScript = 'LegacyFuel' -- Resourcename of your fuel script, lj-fuel, LegacyFuel, qb-fuel, ...

Shared.ClearMails = true -- Clears old Chop shop mails when starting the script.
Shared.MailAuthor = 'Leon Heart' -- The senders name for the email.
Shared.MailTitle = 'Chop Shop' -- The title for the email

-- Starting Settings
Shared.StartLocation = vector4(-418.91, -1676.32, 19.03, 127.37)
Shared.Time = 1.5 -- Minutes it takes to get a job upon interacting with the ped.
Shared.AutoRestart = true -- true | false, get a new contract when completing the first, if false you have to get back to the starting ped
Shared.AutoRestartDelay = 1.0 -- Minutes it takes to get a new job after completing one
Shared.FuelAmount = 80.0

-- Zone Sizes
Shared.VehicleZoneRadius = 200.0
Shared.VehicleBlipRadius = 250.0
Shared.VehicleBlipOffset = 150.0
Shared.DropoffZoneRadius = 4.0

-- Rewards
Shared.LaptopChance = 100 -- % Chance to ge a laptop in glovebox, requires ox_inventory
Shared.RewardDrops = 10 -- How many reward drops are done after chopping a vehicle
Shared.RewardAmount = { min = 16, max = 24} -- min and max amount of items from RewardTable that are given per drop
Shared.CashReward = { min = 810, max = 2190} -- Cash reward for completing a chop contract

Shared.RewardTable = {
    'metalscrap',
    'plastic',
    'copper',
    'iron',
    'aluminum',
    'steel',
    'glass',
}

-- Vehicles
Shared.Vehicles = { -- You can always add more, just make sure they're in your QBShared Vehicles :>
    'felon',
    'feltzer2',
    'ninef',
    'previon',
    'banshee',
    'stafford',
    'sultanrs',
    'granger',
    'primo2',
    'sentinel',
    'emperor',
    'sandking',
    'carbonizzare',
    'weevil',
    'cogcabrio',
    'f620',
    'windsor',
    'deviant',
    'dominator3',
    'dukes',
    'ellie',
    'hustler',
    'lurcher',
    'moonbeam',
    'nightshade',
    'phoenix',
    'sabregt',
    'tulip',
    'vigero',
    'yosemite',
    'caracara2',
    'dubsta3',
    'everon',
    'kalahari',
    'winky',
    'landstalker',
    'patriot',
    'seminole2',
    'asterope',
    'glendale2',
    'stanier',
    'stratum',
    'superd',
    'washington',
    'tailgater',
    'bestiagts',
    'buffalo2',
    'comet4',
    'coquette2',
    'futo',
    'jester',
    'penumbra',
    'rapidgt',
    'schafter3',
    'seven70',
    'sugoi',
    'vstr',
    'casco',
    'mamba',
    'manana',
    'pigalle',
    'tornado',
    'zion3',
}

-- Locations
Shared.Locations = { -- You can always add more vector4 coordinates
    vector4(-706.47, -131.07, 37.26, 118.67),
    vector4(-1082.87, -1670.45, 4.29, 124.47),
    vector4(-1090.35, -1633.11, 4.29, 307.13),
    vector4(-1124.22, -1613.0, 3.98, 125.63),
    vector4(-1106.61, -1601.65, 4.25, 305.71),
    vector4(-1202.99, -1488.59, 3.94, 304.28),
    vector4(-1812.35, -636.32, 10.52, 140.66),
    vector4(-1872.06, -584.69, 11.39, 139.56),
    vector4(-2077.61, -312.65, 12.71, 263.52),
    vector4(-1603.78, -363.77, 45.21, 51.14),
    vector4(-1614.72, 18.08, 61.76, 152.05),
    vector4(-1550.2, 132.71, 56.36, 224.51),
    vector4(-1547.53, 105.76, 56.36, 47.23),
    vector4(-1532.31, 82.31, 56.33, 317.17),
    vector4(-1404.92, 67.2, 52.6, 55.78),
    vector4(-1360.33, -144.2, 48.24, 77.37),
    vector4(-1324.7, -236.32, 42.27, 125.7),
    vector4(-1304.75, -222.14, 51.13, 124.09),
    vector4(-1219.37, -196.26, 38.76, 333.91),
    vector4(-339.21, -2183.61, 9.68, 91.34),
    vector4(-307.49, -2221.7, 8.12, 139.67),
    vector4(-231.05, -2080.22, 27.2, 36.68),
    vector4(-691.64, -2146.98, 5.57, 2.23),
    vector4(-755.13, -2291.12, 12.44, 46.22),
    vector4(-917.12, -2295.1, 6.29, 239.17),
    vector4(-888.84, -2102.83, 8.44, 136.98),
    vector4(-1022.53, -2201.99, 8.56, 223.01),
    vector4(-1077.56, -2178.01, 12.86, 224.27),
    vector4(-1035.82, -1339.41, 5.05, 253.87),
    vector4(-1011.21, -1469.25, 4.58, 213.76),
    vector4(1158.32, -1314.84, 34.32, 176.94),
    vector4(1500.61, -1886.03, 71.52, 118.25),
    vector4(1594.13, -1700.89, 87.7, 298.82),
    vector4(1632.71, -1880.96, 105.81, 337.65),
    vector4(1517.62, -2099.7, 76.41, 93.02),
    vector4(1563.15, -2169.39, 77.1, 159.93),
    vector4(1482.33, -1918.14, 70.97, 29.42),
    vector4(2535.67, -286.52, 92.57, 161.19),
    vector4(2434.37, -371.34, 92.57, 89.28),
    vector4(2507.08, -451.5, 92.57, 226.32),
    vector4(2552.11, -361.94, 92.57, 15.05),
    vector4(2567.55, 327.94, 108.03, 177.95),
    vector4(2588.15, 443.59, 108.04, 270.38),
    vector4(2480.57, 1571.31, 32.3, 178.47),
    vector4(2469.41, 1599.22, 32.3, 178.04),
    vector4(2659.74, 1667.49, 24.07, 89.03),
    vector4(2673.19, 1700.75, 24.07, 269.93),
    vector4(2725.24, 1346.81, 24.1, 177.78),
    vector4(2541.53, 2610.5, 37.24, 200.44),
    vector4(2540.84, 2589.43, 37.24, 269.23),
    vector4(2757.73, 2807.77, 32.8, 298.72),
    vector4(2952.91, 2735.99, 43.72, 104.83),
    vector4(2559.73, 2736.77, 42.5, 138.67),
    vector4(2591.51, 3159.72, 50.11, 318.46),
    vector4(2659.38, 3262.35, 54.54, 331.25),
    vector4(2633.09, 3301.05, 54.58, 329.36),
    vector4(2677.16, 3511.78, 52.01, 337.19),
    vector4(2711.77, 4129.6, 43.21, 350.66),
    vector4(2636.29, 4246.26, 44.1, 135.45),
    vector4(2506.11, 4214.01, 39.22, 148.16),
    vector4(2475.23, 3731.42, 41.68, 59.2),
    vector4(1776.57, 3641.7, 33.8, 121.91),
    vector4(899.77, 3653.07, 32.06, 270.63),
    vector4(12.17, 3683.04, 38.98, 113.12),
    vector4(758.18, 4179.39, 39.95, 188.1),
    vector4(1366.12, 4385.86, 43.64, 1.87),
    vector4(1354.47, 4353.7, 43.12, 171.9),
    vector4(1302.63, 4321.89, 37.55, 30.67),
    vector4(1733.83, 4634.99, 42.61, 296.78),
    vector4(1682.99, 4681.58, 42.35, 84.37),
    vector4(-2221.22, 3483.31, 29.47, 359.06),
    vector4(-2011.53, 3383.67, 30.55, 217.12),
    vector4(-441.7, 6341.64, 12.02, 218.33),
    vector4(-480.55, 6259.73, 12.4, 247.54),
    vector4(-695.33, 5814.08, 16.63, 245.39),
    vector4(-697.13, 5780.92, 16.92, 334.93),
    vector4(-771.45, 5572.5, 33.08, 268.54),
    vector4(-755.89, 5548.43, 33.07, 357.57),
    vector4(-804.78, 5391.31, 34.11, 182.59),
    vector4(-570.61, 5243.36, 70.06, 286.7),
    vector4(-266.62, 6354.37, 32.05, 225.48),
    vector4(-406.37, 6227.41, 30.81, 359.08),
    vector4(-411.95, 6172.73, 31.04, 353.84),
    vector4(1.07, 6525.88, 30.85, 315.1),
    vector4(-3233.87, 959.58, 12.47, 187.61),
    vector4(-3054.76, 605.55, 6.54, 109.15),
    vector4(-3054.65, 445.78, 5.66, 65.47),
    vector4(-2964.33, 58.07, 10.9, 332.23),
    vector4(-1562.41, -245.93, 47.58, 53.7),
    vector4(-1543.11, -419.49, 41.29, 229.57),
    vector4(-1535.19, -434.87, 34.74, 229.42),
    vector4(-1448.26, -675.07, 25.76, 32.99),
    vector4(-1231.49, -1027.32, 7.56, 23.66),
    vector4(-1157.43, -1176.19, 4.92, 286.6),
    vector4(-962.38, -1101.85, 1.45, 211.81),
    vector4(-702.62, -1139.05, 9.91, 216.02),
    vector4(-797.71, -1293.01, 4.3, 349.57),
    vector4(-619.52, -1604.56, 26.05, 175.22),
    vector4(1095.92, -2239.8, 29.61, 85.4),
    vector4(1003.37, -2308.6, 29.81, 268.48),
    vector4(1368.82, -2082.78, 51.29, 219.02),
    vector4(1442.17, -1686.58, 65.02, 33.91),
    vector4(1250.68, -1751.99, 46.19, 120.16),
    vector4(1166.58, -1559.95, 33.99, 88.31),
    vector4(1189.04, -1554.63, 38.7, 359.84),
    vector4(217.49, -36.47, 68.92, 159.7),
    vector4(60.58, 17.66, 68.54, 160.27),
    vector4(55.53, -45.43, 68.69, 338.26),
    vector4(0.73, -56.13, 62.58, 69.02),
    vector4(-355.81, 32.82, 47.1, 258.97),
    vector4(-467.39, 74.27, 57.96, 319.1),
    vector4(-1133.33, 2696.56, 18.1, 310.02),
    vector4(-594.89, 2120.72, 127.55, 146.82),
    vector4(-261.74, 1820.88, 197.9, 292.86),
    vector4(-417.51, 1215.44, 324.94, 50.6),
    vector4(-426.38, 1587.72, 355.77, 331.06),
    vector4(-2787.2, 1430.65, 100.22, 235.64),
    vector4(466.56, 2615.48, 42.49, 102.58),
    vector4(569.07, 2588.41, 42.11, 284.11),
    vector4(524.12, 3094.45, 39.76, 65.57),
    vector4(313.95, 2823.19, 42.73, 26.02)
}

Shared.DropOffLocations = { -- You can always add more vector3 coordinates
    vector3(-422.84, -1683.54, 18.33), -- City
    vector3(263.45, -1791.88, 26.41), -- Vagos
    vector3(480.43, -1317.77, 28.5), -- Hayes
    vector3(936.63, -1516.45, 30.27), -- Industry
    vector3(1135.47, -794.44, 56.89), -- mirror park
    vector3(-323.78, -132.35, 38.26), -- vinewood
    vector3(2055.92, 3179.69, 44.46), -- small sandy
    vector3(2053.63, 3193.05, 44.48), -- small sandy
    vector3(2351.43, 3133.49, 47.5), -- big sandy
    vector3(2339.95, 3050.42, 47.45), -- big sandy
    vector3(-197.28, 6271.4, 30.79) -- paleto
}
