local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-misteryAdvanced:basic:client')
AddEventHandler('qb-misteryAdvanced:basic:client', function()
    local src = source
    -- local ped = GetPlayerPed(-1)
    TriggerEvent('CxC:Anim:Func')

    QBCore.Functions.Progressbar("open_pack", Locales[Config.Language]["OPENING_BASIC_BOX"],
        Config.BasicOpenTime, false, true,
        {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-misteryAdvancedBasic:server", src)
        end, function()           -- Cancel
            QBCore.Functions.Notify(Locales[Config.Language]["CANCELED_ACTION"], 'error')
        end)
end)

RegisterNetEvent('qb-misteryAdvanced:premium:client')
AddEventHandler('qb-misteryAdvanced:premium:client', function()
    local src = source
    -- local ped = GetPlayerPed(-1)
    TriggerEvent('CxC:Anim:Func')
    QBCore.Functions.Progressbar("open_premium_pack", Locales[Config.Language]["OPENING_PREMIUM_BOX"],
        Config.PremiumOpenTime, false, true, {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("qb-misteryAdvancedPremium:server", src)
        end, function()           -- Cancel
            QBCore.Functions.Notify(Locales[Config.Language]["CANCELED_ACTION"], 'error')
        end)
end)
