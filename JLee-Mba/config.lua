Config = Config or {}

Config.ActiveVehicles = {}

Config.Job = 'mbafood' -- Name for the job that can access the target etc 

Config.UseBlips = true -- Set to false to disable blips

Config.UseLogs = true -- Set to false to disable discord logs

Config.UseEffects = true -- Set to false to disable effects

Config.UseSounds = true -- Set to false to disable sounds

Config.Target = 'qb-target' -- Name for the target

Config.LogsImage = "https://media.discordapp.net/attachments/1023284074430857328/1023335499361964083/myLogo_2.png" -- The image shown in the discord logs (If enabled)

Config.WebHook = "ADD YOUR WEBHOOK" -- The webhook to send the logs (If enabled)

Config.DeBug = true -- Debug mode, allow you to see where problems are by using prints, and to see the qb-target PolyZones

Config.Thirst = {
    Coffee = 15,
    Sprite = 30,
    CocaCola = 30,
    DRPepper = 30,
    LemonSlushy = 15,
    OrangeSlushy = 15,
    BlueberrySlushy = 15,
}

Config.Hunger = {
    ChickenWrap = 40,
    SpicyChickenWrap = 40,
    ChickenWings = 40,
    PopcornChicken = 20,
    ChickenBurger = 40,
    Hotdog = 20,
  
}

Config.BlipInfo = {
    {title = "Pops Diner", colour = 8, id = 103, x = 1585.9954, y = 6458.27, z = 24.791204},  -- Pops Diner Blip Info
}

Config.Items = {
    Cups = {
        [1] = {
            ['cupname'] = "Regular Cup",
            ['image'] = "<img src=https://cdn.discordapp.com/attachments/967914093396774942/1009528665270395000/pregularcup.png width=30px>",
            ['cup'] = "regularcup",
        }, 
          [2] = {
            ['cupname'] = "Slushies Cup",
            ['image'] = "<img src=https://cdn.discordapp.com/attachments/967914093396774942/1009471216647671859/bregularcup.png width=30px>",
            ['cup'] = "slushiescup",
        }, 
    },

     Slushies = {
        [1] = {
            ['slushyname'] = "Lemon Slushy",
            ['image'] = "<img src=https://cdn.discordapp.com/attachments/1035092965418352641/1047678130820751401/lemonslushy.png width=30px>",
            ['cupsize'] = 'slushiescup',
            ['cupname'] = 'Slushies Cup',
            ['slushy'] = "lemonslushy",
        }, 
        [2] = {
            ['slushyname'] = "Orange Slushy",
            ['image'] = "<img src=https://cdn.discordapp.com/attachments/967914093396774942/1009471177879715911/borangeslush.png width=30px>",
            ['cupsize'] = 'slushiescup',
            ['cupname'] = 'Slushies Cup',
            ['slushy'] = "orangeslushy",
        }, 
        [3] = {
            ['slushyname'] = "Blueberry Slushy",
            ['image'] = "<img src=https://cdn.discordapp.com/attachments/1035092965418352641/1047678131575717988/orangeslushy_.png width=30px>",
            ['cupsize'] = 'slushiescup',
            ['cupname'] = 'Slushies Cup',
            ['slushy'] = "blueberyyslushy",
        }, 
    },

    Drinks = {
        [1] = {
            ['drinkname'] = "Sprite",
            ['image'] = "<img src=https://cdn.discordapp.com/attachments/1035092965418352641/1047512105319923762/sprite.png width=30px>",
            ['cupname'] = "Regular Cup",
            ['cupsize'] = "regularcup",
            ['drink'] = "sprite",
        }, 
        [2] = {
            ['drinkname'] = "CocaCola",
            ['image'] = "<img src=https://cdn.discordapp.com/attachments/1035092965418352641/1047512129621725214/cocacola.png width=30px>",
            ['cupname'] = "Regular Cup",
            ['cupsize'] = "regularcup",
            ['drink'] = "cocacola",
        }, 
        [3] = {
            ['drinkname'] = "DR.Pepper",
            ['image'] = "<img src=https://cdn.discordapp.com/attachments/1035092965418352641/1047512106888605706/pepper.png width=30px>",
            ['cupname'] = "Regular Cup",
            ['cupsize'] = "regularcup",
            ['drink'] = "pepper",
        },
    },
}

Config.Times = {
    BrainFreeze = 2.5, -- Time in seconds for brain freeze effect
    Coffee = 3, -- Time in seconds for coffee effect
    BrainFreezeTimeout = 20, -- Time in second before the player drinks 2 cold drinks in less then 20 seconds he will get a brain freeze otherwise it will reset 
}

Config.Locals = {
    Targets = {
    
    Tray = {
            Icon = "fa fa-random",
            Label = "Open Tray",
        },

        Shop = {
            Icon = "fa fa-shop",
            Label = "Open Shop",
        },
        
        Slushy = {
            Icon = "fa fa-whiskey-glass",
            Label = "Make Slushies",
        },

        SodaMachine = {
            Icon = "fa fa-whiskey-glass",
            Label = "Make Soda",
        },

        CookingStation = {
            Icon = "fa fa-bacon",
            Label = "Griddle",
        },      
    },

    Notifications = {
        DontHaveEnoughMoney = 'You don\'t have enough money !',
        MustBeOnDuty = 'You must be on duty !',
        Error = 'Error...',
        YouDontHave = "You Dont Have Any ",
        NoCups = "You dont have ",
        WarningBrainFreeze = "Slow down you are going to get a brain freeze !",
        BrainFreeze = "You have a brain freeze !",
        NoCoffeeBeans = "You dont have any coffee beans !",
        MissingItems = "You missing something...",
    },

    Menus = {
        SodaMachine = {
            MainHeader = "Drinks Menu",
            CloseMenuHeader = "⬅ Close Menu",
        },

            Slushies = {
            MainHeader = "Slushies",
            CloseMenuHeader = "⬅ Close",
        },

        CookingStation = {
            MainHeader = "Griddle",
            CloseMenuHeader = "⬅ Close Menu",
        },
    },

    Progressbar = {
        Drink = {
            Text = "Drinking ",
            Time = 7000,
        },

        MakeDrinks = {
            Text = "Pouring ",
            Time = 3000,
        },

        Eat = {
            Text = "Eating ",
        },
       
        CookingStationCookingTime = {
            Time = 7000,
        },

        Eating = {
            Time = 5000,
        },
    }
}

Config.Locations = {
   
     Duty = {
        Distance = 0.9,
    },

    Shop = {
        Coords = vector3(-289.0, -1934.87, 30.15),
        Heading = 320,
        minZ = 29.15,
        maxZ = 30.15,
    },
    SodaMachine = {
        Coords = vector3(-293.21, -1932.04, 30.15),
        Heading = 320,
        minZ = 30.15,
        maxZ = 30.8,
    },

    CookingStation = {
        Coords = vector3(-292.73, -1936.82, 30.15),
        Heading = 50,
         minZ = 30.15,
        maxZ = 30.4,
    },

    
    SlushyMachines = {
        [1] = {
            ['coords'] = vector3(-294.49, -1933.73, 30.15),
            ['heading'] = 325.0,
            ['minZ'] = 30.15,
            ['maxZ'] = 31.0,
            ['poly1'] = 0.6,
            ['poly2'] = 0.6,
        },
        [2] = {
            ['coords'] = vector3(-293.58, -1932.67, 30.15),
             ['heading'] = 325.0,
            ['minZ'] = 30.15,
            ['maxZ'] = 31.0,
            ['poly1'] = 0.6,
            ['poly2'] = 0.6,
        },
    },

    Trays = {
        [1] = {
            ['coords'] = vector3(-290.49, -1933.44, 30.15),
            ['heading'] = 50,
            ['minZ'] = 30.15,
            ['maxZ'] = 30.6,
            ['poly1'] = 1.0,
            ['poly2'] = 0.6,
        },
        [2] = {
            ['coords'] = vector3(-291.34, -1932.78, 30.15),
            ['heading'] = 50,
            ['minZ'] = 30.15,
            ['maxZ'] = 30.6,
            ['poly1'] = 1.0,
            ['poly2'] = 0.6,
        }, 
    },
}


Config.Props = {
    [1] = { -- Duty prop
        ['model'] = "prop_fib_clipboard", -- Model To Spawn, you can found more at - https://gtahash.ru
        ['coords'] = vector3(1596.2219, 6454.6964, 26.374014),
        ['heading'] = 338.21063,
    }, 
}

Config.ShopItems = {
    label = "Shop",
    slots = 5,
    items = { 
        [1] = {
            name = "coffeebeans",
            price = 10,
            amount = 100,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "rawchicken",
            price = 15,
            amount = 100,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "wrap",
            price = 5,
            amount = 100,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "lettuce",
            price = 12,
            amount = 100,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "hotsauce",
            price = 12,
            amount = 100,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "rawchickenwings",
            price = 50,
            amount = 100,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "flour",
            price = 50,
            amount = 100,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "butter",
            price = 50,
            amount = 100,
            info = {},
            type = "item",
            slot = 8,
         },
        [9] = {
            name = "regularcup",
            price = 50,
            amount = 100,
            info = {},
            type = "item",
            slot = 9,

        },
         [10] = {
            name = "breadbun",
            price = 50,
            amount = 100,
            info = {},
            type = "item",
            slot = 10,

        },
            [11] = {
            name = "slushiescup",
            price = 50,
            amount = 100,
            info = {},
            type = "item",
            slot = 11,

        },
             [12] = {
            name = "sasuage",
            price = 50,
            amount = 100,
            info = {},
            type = "item",
            slot = 12,

        },
             [13] = {
            name = "hotdogbun",
            price = 50,
            amount = 100,
            info = {},
            type = "item",
            slot = 13,

        },
    
        },
    }
