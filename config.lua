Config = {}
--Language Settings
Config.Language = 'es' -- 'en' / 'es' optional language


--Progress settings
Config.BasicOpenTime = 5000   -- 5 Seconds
Config.PremiumOpenTime = 5000 -- 5 Seconds

--Money settings ----
--CLARIFICATION: THIS MONEY IS DELIVERED ONLY WITH THE BASIC BOX

Config.Cash = false               -- True if you need the cash box too
Config.CashAmount = 100
Config.Money = false              -- True if you need the box also money in the bank
Config.MoneyAmount = 100          -- True if you need the box also money in the bank
Config.AdicionalMoney = false     --True if you need the box to deliver some other type of money
Config.AdicionalMoneyAmount = 100 --True if you need the box to deliver some other type of money
Config.AdicionalMoneyName =
'crypto'                          --Name the type of money you need from [This currency/money is pre-created by qbcore]

--CLARIFICATION: THIS MONEY IS DELIVERED ONLY WITH THE BASIC BOX


--Item settings
Config.Random = true               -- true : will give one of the items in the list randomly / false : will return all items on the list
Config.BasicItem = "basicpack"     -- Basic pack item
Config.BasicRemoveAmount = 1       -- Remove amount of the packs on use
Config.PremiumItem = "premiumpack" -- Premium pack
Config.PremiumRemoveAmount = 1     -- Remove amount of the packs on use

--Packs settings
Config.Basic = {                                 -- Lower end pack rewards
    [1] = { name = 'water_bottle', amount = 2 }, -- name: item qbcore shared , amount: amount to be given
    [2] = { name = 'sandwich', amount = 2 },
    -- [3] = { name = 'water_bottle', amount = 2 },

}

Config.Premium = {                        -- Higher end pack rewards
    [1] = { name = 'phone', amount = 2 }, -- name: item qbcore shared , amount: amount to be given
    [2] = { name = 'water_bottle', amount = 2 },
    -- [3] = { name = 'water_bottle', amount = 2 },
}

Config.Debug = true -- Set it to false if you don't want console spam
