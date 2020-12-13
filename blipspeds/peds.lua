local peds = {
    --[[                Model Name          X Loc       Y Loc       Z Loc      Height         Animation Name ]]
    {hash = GetHashKey('s_m_y_cop_01'), x = 454.3, y = -980.17, z = 29.69, h = 89.46, anim = 'WORLD_HUMAN_CLIPBOARD'}, -- Gun Locker Room MRPD
    {hash = GetHashKey('s_m_y_cop_01'), x = 441.14, y = -978.66, z = 29.69, h = 184.68, anim = 'WORLD_HUMAN_COP_IDLES'}, -- Front Desk MRPD
    {hash = GetHashKey('s_m_y_cop_01'), x = 1851.3, y = 3690.59, z = 33.27, h = 119.46, anim = 'WORLD_HUMAN_CLIPBOARD'}, -- Sandy PD Desk
    {hash = GetHashKey('s_m_y_cop_01'), x = -449.57, y = 6010.52, z = 30.72, h = 225.08, anim = 'WORLD_HUMAN_CLIPBOARD'}, -- Paleto PD Desk

    {hash = GetHashKey('mp_m_shopkeep_01'), x = 24.18, y = -1345.53, z = 28.5, h = 269.25, anim = 'WORLD_HUMAN_LEANING'}, -- 24/7 Shop Keeper 1
    {hash = GetHashKey('mp_m_shopkeep_01'), x = 372.77, y = 328.22, z = 102.57, h = 255.08, anim = 'WORLD_HUMAN_LEANING'}, -- 24/7 Shop Keeper 2
    {hash = GetHashKey('mp_m_shopkeep_01'), x = 2555.45, y = 380.6, z = 107.62, h = 359.86, anim = 'WORLD_HUMAN_LEANING'}, -- 24/7 Shop Keeper 3
    {hash = GetHashKey('mp_m_shopkeep_01'), x = -3040.47, y = 583.82, z = 6.91, h = 18.58, anim = 'WORLD_HUMAN_LEANING'}, -- 24/7 Shop Keeper 4
    {hash = GetHashKey('mp_m_shopkeep_01'), x = -3244.08, y = 999.9, z = 11.83, h = 354.93, anim = 'WORLD_HUMAN_LEANING'}, -- 24/7 Shop Keeper 5
    {hash = GetHashKey('mp_m_shopkeep_01'), x = 549.52, y = 2669.66, z = 41.16, h = 96.84, anim = 'WORLD_HUMAN_LEANING'}, -- 24/7 Shop Keeper 6
    {hash = GetHashKey('mp_m_shopkeep_01'), x = 2676.43, y = 3280.09, z = 54.24, h = 332.98, anim = 'WORLD_HUMAN_LEANING'}, -- 24/7 Shop Keeper 7
    {hash = GetHashKey('mp_m_shopkeep_01'), x = 1959.05, y = 3741.39, z = 31.34, h = 300.05, anim = 'WORLD_HUMAN_LEANING'}, -- 24/7 Shop Keeper 8
    {hash = GetHashKey('mp_m_shopkeep_01'), x = 1728.49, y = 6416.84, z = 34.04, h = 242.32, anim = 'WORLD_HUMAN_LEANING'}, -- 24/7 Shop Keeper 9

    {hash = GetHashKey('s_f_y_bartender_01'), x = 129.2, y = -1283.48, z = 28.27, h = 125.24, anim = 'Standing'}, -- Vanilla Unicorn Bartender
    {hash = GetHashKey('s_m_m_bouncer_01'), x = 127.84, y = -1299.54, z = 28.23, h = 209.4, anim = 'WORLD_HUMAN_GUARD_STAND'}, -- Vanilla Unicorn Bouncer
    {hash = GetHashKey('s_m_m_bouncer_01'), x = 130.08, y = -1298.24, z = 28.23, h = 209.4, anim = 'WORLD_HUMAN_GUARD_STAND'}, -- Vanilla Unicorn Bouncer
}

CreateThread(function()
    for _, item in pairs(peds) do
        RequestModel(item.hash)
        while not HasModelLoaded(item.hash) do Wait(1) end
        ped = CreatePed(4, item.hash, item.x, item.y, item.z, item.h, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetPedCombatAttributes(ped, 46, true)
        SetPedFleeAttributes(ped, 0, 0)
        FreezeEntityPosition(ped, true)
        SetEntityCollision(ped, false, true)
        SetEntityInvincible(ped, true)
        TaskStartScenarioInPlace(ped, item.anim, 0, true)
    end
end)
