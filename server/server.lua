local QBCore = exports['qb-core']:GetCoreObject()

function Random_I_Fuc()
    local variable = Config.Basic[math.random(#Config.Basic)]
    return variable.name, variable.amount
end

function Random_GI_Fuc()
    return Config.Premium[math.random(#Config.Premium)]
end

RegisterNetEvent("qb-misteryAdvancedBasic:server")
AddEventHandler("qb-misteryAdvancedBasic:server", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local variable = {}
    TriggerClientEvent('QBCore:Notify', source, Locales[Config.Language]["NOTIFY_OPENED_BASIC_BOX"], "primary")
    Citizen.Wait(2500)
    if Config.Random then
        variable = Config.Basic[math.random(#Config.Basic)]
        Player.Functions.AddItem(variable.name, variable.amount)
    else
        for k, value in pairs(Config.Basic) do
            Player.Functions.AddItem(value.name, value.amount)
        end
    end

    if Config.Money then
        Player.Functions.AddMoney('bank', Config.MoneyAmount, Locales[Config.Language]
            ["ADD_MONEY_BANK"])
    end

    if Config.Money then
        Player.Functions.AddMoney('cash', Config.CashAmount, Locales[Config.Language]
            ["ADD_MONEY_CASH"])
    end

    if Config.Money then
        Player.Functions.AddMoney(Config.AdicionalMoneyName, Config.AdicionalMoneyAmount, Locales[Config.Language]
            ["ADD_MONEY_ADICIONAL"])
    end


    if Config.Debug then print("^0[^5Debug^7][^3Information^0]: Just opened an mystery pack! Player-ID: ^5" .. src) end
    TriggerClientEvent('QBCore:Notify', src, Locales[Config.Language]["REWARD_ADD_ITEMS"], "success")
end)

RegisterNetEvent("qb-misteryAdvancedPremium:server")
AddEventHandler("qb-misteryAdvancedPremium:server", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local variable = {}

    TriggerClientEvent('QBCore:Notify', source, Locales[Config.Language]["NOTIFY_OPENED_PREMIUM_BOX"], "primary")
    Citizen.Wait(2500)

    if Config.Random then
        variable = Config.Premium[math.random(#Config.Premium)]
        Player.Functions.AddItem(variable.name, variable.amount)
    else
        for k, value in pairs(Config.Premium) do
            Player.Functions.AddItem(value.name, value.amount)
        end
    end
    if Config.Debug then
        print("^0[^5Debug^7][^3Information^0]: Just opened an premium mystery pack! Player-ID: ^5" ..
            src)
    end
    TriggerClientEvent('QBCore:Notify', src, Locales[Config.Language]["REWARD_ADD_ITEMS"], "success")
end)

QBCore.Functions.CreateUseableItem(Config.BasicItem, function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(Config.BasicItem, Config.BasicRemoveAmount) then
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.BasicItem], "remove")
        TriggerClientEvent('qb-misteryAdvanced:basic:client', src)
        if Config.Debug then print("^0[^5Debug^7][^3Information^0]: Removed basic pack! Player-ID: ^5" .. src) end
    end
end)

QBCore.Functions.CreateUseableItem(Config.PremiumItem, function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(Config.PremiumItem, Config.PremiumRemoveAmount) then
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PremiumItem], "remove")
        TriggerClientEvent('qb-misteryAdvanced:premium:client', src)
        if Config.Debug then print("^0[^5Debug^7][^3Information^0]: Removed premium pack! Player-ID: ^5" .. src) end
    end
end)
