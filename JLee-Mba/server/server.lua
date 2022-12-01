local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Functions.CreateUseableItem("coffee", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Drink", src, "coffee", "Coffee", "amb@world_human_drinking@coffee@male@idle_a", "idle_a", 'prop_mug_02', 28422, { x=0.01, y=-0.01, z=-0.00 }, Config.Thirst["Coffee"], false, true)
end)

QBCore.Functions.CreateUseableItem("sprite", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Drink", src, "sprite", "Sprite", "amb@world_human_drinking@coffee@male@idle_a", "idle_a", 'prop_plastic_cup_02', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["Sprite"], true, false)
end)

QBCore.Functions.CreateUseableItem("cocacola", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Drink", src, "cocacola", "CocaCola", "amb@world_human_drinking@coffee@male@idle_a", "idle_a", 'prop_plastic_cup_02', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["CocaCola"], true, false)
end)

QBCore.Functions.CreateUseableItem("pepper", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Drink", src, "pepper", "DR.Pepper", "amb@world_human_drinking@coffee@male@idle_a", "idle_a", 'prop_plastic_cup_02', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["DRPepper"], true, false)
end)


QBCore.Functions.CreateUseableItem("chickenwrap", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Eat", src, false, "chickenwrap", 'Chicken Wrap', Config.Locals['Progressbar']['Eating']['Time'], Config.Hunger["ChickenWrap"], "mp_player_inteat@burger", "mp_player_int_eat_burger", 'prop_taco_02', 18905, { x=0.12, y=0.03, z=0.04 })
end)

QBCore.Functions.CreateUseableItem("spicychickenwrap", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Eat", src, false, "spicychickenwrap", 'Spicy Chicken Wrap', Config.Locals['Progressbar']['Eating']['Time'], Config.Hunger["SpicyChickenWrap"], "mp_player_inteat@burger", "mp_player_int_eat_burger", 'prop_taco_02', 18905, { x=0.12, y=0.03, z=0.04 })
end)


QBCore.Functions.CreateUseableItem("chickenwings", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Eat", src, false, "chickenwings", 'Chicken Wings', Config.Locals['Progressbar']['Eating']['Time'], Config.Hunger["ChickenWings"], "mp_player_inteat@burger", "mp_player_int_eat_burger", 'prop_cs_plate_01', 60309, { x=0.02, y=0.05, z=0.02 })
end)

QBCore.Functions.CreateUseableItem("popcornchicken", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Eat", src, false, "popcornchicken", 'Popcorn Chicken', Config.Locals['Progressbar']['Eating']['Time'], Config.Hunger["ChickenWings"], "mp_player_inteat@burger", "mp_player_int_eat_burger", 'prop_cs_plate_01', 60309, { x=0.02, y=0.05, z=0.02 })
end)

QBCore.Functions.CreateUseableItem("chickenburger", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Eat", src, false, "chickenburger", 'Chicken Burger', Config.Locals['Progressbar']['Eating']['Time'], Config.Hunger["ChickenWings"], "mp_player_inteat@burger", "mp_player_int_eat_burger", 'prop_cs_plate_01', 60309, { x=0.02, y=0.05, z=0.02 })
end)

QBCore.Functions.CreateUseableItem("lemonslushy", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Drink", src, "lemonslushy", "Lemon Slushy", "amb@world_human_drinking@coffee@male@idle_a", "idle_b", 'v_ret_fh_bscup', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["LemonSlushy"], true, false)
end)

QBCore.Functions.CreateUseableItem("orangeslushy", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Drink", src, "orangeslushy", "Orange Slushy", "amb@world_human_drinking@coffee@male@idle_a", "idle_b", 'v_ret_fh_bscup', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["OrangeSlushy"], true, false)
end)

QBCore.Functions.CreateUseableItem("blueberyyslushy", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Drink", src, "blueberyyslushy", "Blueberry Slushy", "amb@world_human_drinking@coffee@male@idle_a", "idle_b", 'v_ret_fh_bscup', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["BlueberrySlushy"], true, false)
end)

QBCore.Functions.CreateUseableItem("hotdog", function(source, item)
    local src = source
    TriggerClientEvent("JLee-Mba:Eat", src, false, "hotdog", 'Hotdog', Config.Locals['Progressbar']['Eating']['Time'], Config.Hunger["ChickenWrap"], "mp_player_inteat@burger", "mp_player_int_eat_burger", 'prop_taco_02', 18905, { x=0.12, y=0.03, z=0.04 })
end)


QBCore.Functions.CreateCallback('JLee-Mba:CheckDuty', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.job.onduty then
        cb(true)
    else
        cb(false)
	end
end)


RegisterServerEvent("JLee-Mba:RemoveItem", function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then
        if amount then
            Player.Functions.RemoveItem(item, amount, false)
        else
            Player.Functions.RemoveItem(item, GetItem.amount, false)
        end
    end
end)

RegisterServerEvent("JLee-Mba:AddItem", function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(item, amount, false)
end)

QBCore.Functions.CreateCallback('JLee-Mba:HasItem', function(source, cb, item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then
        if amount then
            if GetItem.amount >= amount then
                cb(true)
            else
                cb(false)
            end        
        else
            if GetItem.amount then
                cb(true)
            else
                cb(false)
            end
        end
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForChickenWrapItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rawchicken = Player.Functions.GetItemByName("rawchicken")
    local lettuce = Player.Functions.GetItemByName("lettuce")
    local wrap = Player.Functions.GetItemByName("wrap")
    if rawchicken ~= nil and lettuce ~= nil and wrap ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForSpicyChickenWrapItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rawchicken = Player.Functions.GetItemByName("rawchicken")
    local lettuce = Player.Functions.GetItemByName("lettuce")
    local wrap = Player.Functions.GetItemByName("wrap")
    local hotsauce = Player.Functions.GetItemByName("hotsauce")
    if rawchicken ~= nil and lettuce ~= nil and wrap ~= nil and hotsauce ~= nil then
        cb(true)
    else
        cb(false)
	end
end)



QBCore.Functions.CreateCallback('JLee-Mba:CheckForChickenWingsItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local wings = Player.Functions.GetItemByName("rawchicken")
    local flour = Player.Functions.GetItemByName("flour")
    local butter = Player.Functions.GetItemByName("butter")
    if wings ~= nil and flour ~= nil and sauce ~= nil  then
        cb(true)
    else
        cb(false)
	end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForPopcornChickenItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rawchicken = Player.Functions.GetItemByName("rawchicken")
    local flour = Player.Functions.GetItemByName("flour")
    local butter = Player.Functions.GetItemByName("butter")
    local sauce = Player.Functions.GetItemByName("hotsauce")
    if rawchicken ~= nil and flour ~= nil and sauce ~= nil and butter ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForChickenBurgerItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rawchicken = Player.Functions.GetItemByName("rawchicken")
    local breadbun = Player.Functions.GetItemByName("breadbun")
    local lettuce = Player.Functions.GetItemByName("lettuce")
    if rawchicken ~= nil and breadbun ~= nil and lettuce ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForHotdogItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local sausage = Player.Functions.GetItemByName("sasuage")
    local bun = Player.Functions.GetItemByName("hotdogbun")
    if sausage ~= nil and bun ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForCocktailItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local strawberry = Player.Functions.GetItemByName("strawberry")
    local sugar = Player.Functions.GetItemByName("sugar")
    local tequila = Player.Functions.GetItemByName("tequila")
    if strawberry ~= nil and sugar ~= nil and tequila ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForCoconutDrinktems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local coconut = Player.Functions.GetItemByName("coconut")
    local sugar = Player.Functions.GetItemByName("sugar")
    local tequila = Player.Functions.GetItemByName("tequila")
    if coconut ~= nil and sugar ~= nil and tequila ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForLongIslandItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local orange = Player.Functions.GetItemByName("orange")
    local sugar = Player.Functions.GetItemByName("sugar")
    local tequila = Player.Functions.GetItemByName("tequila")
    if orange ~= nil and sugar ~= nil and tequila ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForKamikazeeItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local blueberry = Player.Functions.GetItemByName("blueberry")
    local sugar = Player.Functions.GetItemByName("sugar")
    local tequila = Player.Functions.GetItemByName("tequila")
    if blueberry ~= nil and sugar ~= nil and tequila ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

QBCore.Functions.CreateCallback('JLee-Mba:CheckForDaquiriItems', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local watermelon = Player.Functions.GetItemByName("watermelon")
    local sugar = Player.Functions.GetItemByName("sugar")
    local daquiris = Player.Functions.GetItemByName("daquiris")
    if watermelon ~= nil and sugar ~= nil and daquiris ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

function DiscordLog(message)
    local embed = {
        {
            ["color"] = 04255, 
            ["title"] = "JLee CluckingBell",
            ["description"] = message,
            ["url"] = "https://discord.gg/rExc97jFFY",
            ["footer"] = {
                ["text"] = "By JLee",
                ["icon_url"] = Config.LogsImage
            },
            ["thumbnail"] = {
                ["url"] = Config.LogsImage,
            },
        }
    }
    PerformHttpRequest(Config.WebHook, function(err, text, headers) end, 'POST', json.encode({username = 'JLee-Mba', embeds = embed, avatar_url = Config.LogsImage}), { ['Content-Type'] = 'application/json' })
end