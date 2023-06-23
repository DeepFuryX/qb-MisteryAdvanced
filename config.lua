Config = {}
--Language Settings
Config.Language = 'es' -- 'en' / 'es' optional language


--Progress settings
Config.BasicOpenTime = 5000   -- 5 Seconds
Config.PremiumOpenTime = 5000 -- 5 Seconds

--Item settings
Config.Random = true               -- true : will give one of the items in the list randomly / false : will return all items on the list
Config.BasicItem = "basicpack"     -- Basic pack item
Config.BasicRemoveAmount = 1       -- Remove amount of the packs on use
Config.PremiumItem = "premiumpack" -- Premium pack
Config.PremiumRemoveAmount = 1     -- Remove amount of the packs on use

--Packs settings
-- Config.BasicAmount = 5 -- Amount wich player receive from the pack
Config.Basic = {                                 -- Lower end pack rewards
    [1] = { name = 'water_bottle', amount = 2 }, -- name: item qbcore shared , amount: amount to be given
    [2] = { name = 'sandwich', amount = 2 },
    -- [3] = { name = 'water_bottle', amount = 2 },

}

-- Config.PremiumAmount = 1 -- Amount wich player receive from the pack
Config.Premium = {                        -- Higher end pack rewards
    [1] = { name = 'phone', amount = 2 }, -- name: item qbcore shared , amount: amount to be given
    [2] = { name = 'water_bottle', amount = 2 },
    -- [3] = { name = 'water_bottle', amount = 2 },
}

Config.Debug = true -- Set it to false if you don't want console spam
