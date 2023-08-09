Config = {}

Config.WebhookUrl = "https://discord.com/api/webhooks/1135353055190208552/WmjxmyfD6_hvQGF_C5cMazG6vJk5ozwIfI5mU873DERfvovWaleZcTEswtfvoNbv4AsR"

Config.discount = 0.75 -- Percent that is deducted from the car price 10%

Config.pickupblip = vector3(-1327.479736328, -86.045326232910, 49.31)

Config.carspawn = vector4(-1327.479736328, -86.045326232910, 49.31, 92.29) ----- Same as pickupblip

Config.deliveryblip = {
    vector3(-31.37, -1089.87, 26.42), -- PDM delivery location
    vector3(-1637.95, -3102.1, 13.94), -- AIR delivery location
}

-----------------------------------------------------------------------------
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42)-- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.PreventFinanceSelling = false -- allow/prevent players from using /transfervehicle if financed
Config.FilterByMake = true -- adds a make list before selecting category in shops
Config.SortAlphabetically = true -- will sort make, category, and vehicle selection menus alphabetically
Config.HideCategorySelectForOne = true -- will hide the category selection menu if a shop only sells one category of vehicle or a make has only one category
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-32.02657699585, -1101.5877685547),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['spawn'] = vector3(-71.76, -1087.29, 26.68), -- Spawn location for STOCK BOUGHT
        ['pickupblip'] = vector3(-71.76, -1087.29, 26.68), -- BLIP location for PICKUPBLIP (SAME AS SPAWN COORDS)
        ['deliveryblip'] = vector3(-31.55, -1090.45, 26.09), -- BLIP location AND DELIVERY location
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-37.06, -1093.26, 26.3, 69.5), -- where the vehicle will spawn on display
                defaultVehicle = 'ardent', -- Default display vehicle
                chosenVehicle = 'ardent', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-42.34, -1101.39, 26.27, 294.5),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-47.55, -1092.03, 26.3, 66.5),
                defaultVehicle = 'coquette',
                chosenVehicle = 'coquette'
            },
            [4] = {
                coords = vector4(-49.87, -1083.75, 26.27, 254.5),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-54.65, -1096.91, 26.27, 338.5),
                defaultVehicle = 'rhapsody',
                chosenVehicle = 'rhapsody'
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['spawn'] = vector3(-1243.8, -327.81, 37.21), -- Spawn location for STOCK BOUGHT
        ['pickupblip'] = vector3(-1243.8, -327.81, 37.21), -- BLIP location for PICKUPBLIP (SAME AS SPAWN COORDS)
        ['deliveryblip'] = vector3(-1248.83, -357.93, 36.91), -- BLIP location AND DELIVERY location
        ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1268.88, -365.19, 36.12, 298.57),                     --slot1
                defaultVehicle = 'mx5326',
                chosenVehicle = 'mx5326'
            },
            [2] = {
                coords = vector4(-1270.39, -362.26, 36.12, 291.86),                     --slot2
                defaultVehicle = 'r33',
                chosenVehicle = 'r33'
            },
            [3] = {
                coords = vector4(-1270.68, -358.57, 36.12, 257.08),                     --slot3
                defaultVehicle = 'gt17',
                chosenVehicle = 'gt17'
            },
            [4] = {
                coords = vector4(-1267.77, -355.71, 36.12, 210.95),                     --slot4
                defaultVehicle = 'eleanor',
                chosenVehicle = 'eleanor'
            },
            [5] = {
                coords = vector4(-1265.01, -354.3, 36.12, 209.54),                      --slot5
                defaultVehicle = 'c7',
                chosenVehicle = 'c7'
            },
            [6] = {
                coords = vector4(-1262.43, -352.94, 36.12, 208.36),                     --slot6
                defaultVehicle = 'amggtr2',
                chosenVehicle = 'amggtr2'
            },
            [7] = {
                coords = vector4(-1256.38, -366.44, 36.12, 103.65),                     --middleshowcar
                defaultVehicle = 'mb6',
                chosenVehicle = 'mb6'
            },
            [8] = {
                coords = vector4(-1242.97, -358.45, 39.55, 87.53),                      --upstairswall
                defaultVehicle = '2019chiron',
                chosenVehicle = '2019chiron'
            },
            [9] = {
                coords = vector4(-1245.2, -354.34, 39.55, 84.33),                       --upstairsmiddle
                defaultVehicle = 'rmodlp770',
                chosenVehicle = 'rmodlp770'
            },
            [10] = {
                coords = vector4(-1247.41, -350.25, 39.16, 76.59),                      --upstairsnextstairs
                defaultVehicle = 'laferrari',
                chosenVehicle = 'laferrari'
            },
        }
    }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0, -- min height of the shop zone
            ['maxZ'] = 5.0, -- max height of the shop zone
            ['size'] = 6.2 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 410, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['spawn'] = vector3(-768.9, -1378.7, 0.4), -- Spawn location for STOCK BOUGHT
        ['pickupblip'] = vector3(-768.9, -1378.7, 0.4), -- BLIP location for PICKUPBLIP (SAME AS SPAWN COORDS)
        ['deliveryblip'] = vector3(-749.94, -1354.6, 1.55), -- BLIP location AND DELIVERY location
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99, -- min height of the shop zone
            ['maxZ'] = 16.99, -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 251, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
        ['spawn'] = vector3(-1738.28, -3048.66, 13.82), -- Spawn location for STOCK BOUGHT
        ['pickupblip'] = vector3(-1738.28, -3048.66, 13.82), -- BLIP location for PICKUPBLIP (SAME AS SPAWN COORDS)
        ['deliveryblip'] = vector3(-1642.55, -3105.58, 13.62), -- Spawn location for PICKUPBLIP (SAME AS SPAWN COORDS)
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['truck'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(872.23, -1173.5),
                vector2(868.88, -1162.7),
                vector2(900.91, -1156.54),
                vector2(901.96, -1173.71),
                vector2(883.59, -1174.47),
                vector2(884.59, -1161.29),
                vector2(890.06, -1155.0),
                vector2(907.71, -1168.71)
            },
            ['minZ'] = 23.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 5.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Truck Motor Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 477, -- Blip sprite
        ['blipColor'] = 2, -- Blip color
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(900.47, -1155.74, 25.16), -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- Spawn location when vehicle is bought
        ['spawn'] = vector3(908.55, -1175.22, 25.38), -- Spawn location for STOCK BOUGHT
        ['pickupblip'] =vector3(908.55, -1175.22, 25.38), -- BLIP location for PICKUPBLIP (SAME AS SPAWN COORDS)
        ['deliveryblip'] = vector3(892.3, -1167.34, 25.03), -- BLIP location AND DELIVERY location
        ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(890.84, -1170.92, 25.08, 269.58), -- where the vehicle will spawn on display
                defaultVehicle = 'hauler', -- Default display vehicle
                chosenVehicle = 'hauler', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(878.45, -1171.04, 25.05, 273.08),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = {
                coords = vector4(880.44, -1163.59, 24.87, 273.08),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            },
            [4] = {
                coords = vector4(896.95, -1162.62, 24.98, 273.08),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
        },
    },
    ['bike'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
            vector2(305.35302734375, -1148.6918945312),
            vector2(305.35302734375, -1148.6918945312),
            vector2(268.72860717773, -1148.3325195312),
            vector2(268.62280273438, -1172.2863769531),
            vector2(305.3684387207, -1167.8911132812)
            },
            ['minZ'] = 29.29, -- min height of the shop zone
            ['maxZ'] = 29.33, -- max height of the shop zone
            ['size'] = 5.0, -- size of the vehicles zones
        },
        ['Job'] = 'bikedealer', -- Name of job or none
        ['ShopLabel'] = 'Bike Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 226, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(288.35, -1161.7, 29.27), -- Blip Location
        ['ReturnLocation'] = vector3(273.46, -1160.05, 28.62), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(265.88, -1159.9, 28.59, 86.49), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(265.86, -1164.81, 28.52, 89.88), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(303.08, -1158.17, 28.52, 132.56), -- where the vehicle will spawn on display
                defaultVehicle = 'nemesis', -- Default display vehicle
                chosenVehicle = 'nemesis' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(303.05, -1154.46, 28.52, 131.75),
                defaultVehicle = 'innovation',
                chosenVehicle = 'innovation'
            },
            [3] = {
                coords = vector4(298.71, -1150.94, 28.52, 221.26),
                defaultVehicle = 'hakuchou2',
                chosenVehicle = 'hakuchou2'
            },
            [4] = {
                coords = vector4(295.48, -1150.82, 28.52, 215.79),
                defaultVehicle = 'gargoyle',
                chosenVehicle = 'gargoyle'
            },
            [5] = {
                coords = vector4(291.01, -1150.79, 28.52, 219.36),
                defaultVehicle = 'fcr',
                chosenVehicle = 'fcr'
            },
            [6] = {
                coords = vector4(290.01, -1154.68, 28.52, 316.21),
                defaultVehicle = 'esskey',
                chosenVehicle = 'esskey'
            },
            [7] = {
                coords = vector4(285.18, -1154.65, 28.52, 42.82),
                defaultVehicle = 'double',
                chosenVehicle = 'double'
            },
            [8] = {
                coords = vector4(283.86, -1150.95, 28.52, 137.23),
                defaultVehicle = 'diablous',
                chosenVehicle = 'diablous'
            },
            [9] = {
                coords = vector4(281.18, -1155.27, 28.52, 228.66),
                defaultVehicle = 'defiler',
                chosenVehicle = 'defiler'
            },
            [10] = {
                coords = vector4(281.17, -1152.55, 28.62, 225.21),
                defaultVehicle = 'cliffhanger',
                chosenVehicle = 'cliffhanger'
            },
        },
    },
}