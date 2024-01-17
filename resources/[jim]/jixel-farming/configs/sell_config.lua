
--[[
   _____   ______   _        _          _____    _____    _____    _____   ______    _____
  / ____| |  ____| | |      | |        |  __ \  |  __ \  |_   _|  / ____| |  ____|  / ____|
 | (___   | |__    | |      | |        | |__) | | |__) |   | |   | |      | |__    | (___
  \___ \  |  __|   | |      | |        |  ___/  |  _  /    | |   | |      |  __|    \___ \
  ____) | | |____  | |____  | |____    | |      | | \ \   _| |_  | |____  | |____   ____) |
 |_____/  |______| |______| |______|   |_|      |_|  \_\ |_____|  \_____| |______| |_____/

-- For every item you have above you must also list them down here by their itemname
-- Prices can be set at a stright number. However, what I've found best to be easiest is to have the
prices at a math.random so that everytime your server restarts or the resource does. The prices change
thus combatting people trying to exploit for a certain price. ]]--

SellItems = {
    ['orange'] = { price = math.random(2, 7), category = "FRUIT" },
    ['apple'] = { price = math.random(2,7), category = "FRUIT" },
    ['pear'] = { price = math.random(2,7), category = "FRUIT" },
    ['lemon'] = { price = math.random(2,7), category = "FRUIT" },
    ['mango'] = { price = math.random(2,7), category = "FRUIT" },
    ['peach'] = { price = math.random(2,7), category = "FRUIT" },
    ['plum'] = { price = math.random(2,7), category = "FRUIT" },
    ['cherry'] = { price = math.random(2,7), category = "FRUIT" },
    ['blueberry'] = { price = math.random(2,7), category = "FRUIT" },
    ['blackberry'] = { price = math.random(2,7), category = "FRUIT" },
    ['strawberry'] = { price = math.random(2,7), category = "FRUIT" },
    ['rasberry'] = { price = math.random(2,7), category = "FRUIT" },
    ['guava'] = { price = math.random(2,7), category = "FRUIT" },
    ['apricot'] = { price = math.random(2,7), category = "FRUIT" },
    ['papaya'] = { price = math.random(2,7), category = "FRUIT" },
    ['banana'] = { price = math.random(2,7), category = "FRUIT" },
    ['tomato'] = { price = math.random(2,7), category = "VEGETABLES" },
    ['avacado'] = { price = math.random(2,7), category = "VEGETABLES" },
    ['chilipepper'] = { price = math.random(2,7), category = "HERBS & PLANTS" },
    ['wheat'] = { price = math.random(2,7), category = "HERBS & PLANTS" },
    ['thyme'] = { price = math.random(2,7), category = "HERBS & PLANTS" },
    ['basil'] = { price = math.random(2,7), category = "HERBS & PLANTS" },
    ['mint'] = { price = math.random(2,7), category = "HERBS & PLANTS" },
    ['oregano'] = { price = math.random(2,7), category = "HERBS & PLANTS" },
    ['cilantro'] = { price = math.random(2,7), category = "HERBS & PLANTS" },
    ['chives'] = { price = math.random(2,7), category = "HERBS & PLANTS" },
    ['walnut'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['almond'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['pistachio'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['orangejuice'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['lemonjuice'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['peachjuice'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['applejuice'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['tomatojuice'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['carcass'] = { price = math.random(30,55),     category = "WILD GAME" },
    ["carcass2"] = { price = math.random(40,80),    category = "WILD GAME" },
    ['carcass3'] = { price = math.random(100,125),    category = "WILD GAME" },
    ['redcarcass'] = { price = math.random(40,80),  category = "WILD GAME" },
    ['redcarcass2'] = { price = math.random(60,90), category = "WILD GAME" },
    ['redcarcass3'] = { price = math.random(75,100), category = "WILD GAME" },
    ['deerhide'] = { price = math.random(25,50),    category = "WILD GAME" },
    ['antlers'] = { price = math.random(60,70),     category = "WILD GAME" },
    ['mtlionpelt'] = { price = math.random(300,320),  category = "WILD GAME" },
    ['coyotepelt'] = { price =  math.random(100,150),  category = "WILD GAME" },
    ['boarmeat'] = { price = math.random(100,150),    category = "WILD GAME" },
    ['fish'] = { price = math.random(10,12),        category = "WILD GAME" },
    ['stripedbass'] = { price = math.random(11,15), category = "WILD GAME" },
    ['bluefish'] = { price = math.random(12,16),    category = "WILD GAME" },
    ['redfish'] = { price = math.random(13,17),     category = "WILD GAME" },
    ['goldfish'] = { price = math.random(14,18),    category = "WILD GAME" },
    ['largemouthbass'] = { price = math.random(14,18), category = "WILD GAME" },
    ['swordfish'] = { price = math.random(25,40),  category = "WILD GAME" },
    ['salmon'] = { price = math.random(16,20),       category = "WILD GAME" },
    ['catfish'] = { price = math.random(16,20),      category = "WILD GAME" },
    ['rainbowtrout'] = { price = math.random(16,20), category = "WILD GAME" },
    ['tigershark'] = { price =   math.random(60,70),   category = "WILD GAME" },
    ['stingraymeat'] = { price = math.random(50,80), category = "WILD GAME" },
    ['tunafish'] = { price =     math.random(50,80),     category = "WILD GAME" },
    ['killerwhale'] = { price =  math.random(50,80),  category = "WILD GAME" },
    ['blueberryjam'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ["strawberryjam"] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['tomatosauce'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['flour'] = { price = math.random(2,7), category = "PROCESSED PRODUCTS" },
    ['chickenwings'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['chickenbreast'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['rawbeef'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['rawsteak'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['rawpork'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['rawporkchops'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['rawgroundbeef'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['milk'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['egg'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['butter'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['cheese'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['rawbacon'] = { price = math.random(2,7), category = "ANIMAL PRODUCTS" },
    ['bee-honey'] = { price = math.random(15, 35), category = "HERBS & PLANTS" },
    ['bee-wax'] = { price = math.random(10, 25),   category = "HERBS & PLANTS" },
}