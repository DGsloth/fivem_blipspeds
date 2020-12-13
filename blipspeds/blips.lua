--[[ REF: https://wiki.rage.mp/index.php?title=Blips ]]
--[[ All grouped blips will have #1 closest to the bottom of the map ]]
--[[ ADD BLIP NAME COLOR: <FONT color='#COLORHEX'> ]]
--[[
    ADD FONT FACE: <FONT FACE="$WHATEVERBELOW">
    $Font2 | Brings to top, below numbers
    $Font2_cond | Brings to top below numbers, smaller text
    $Font5 | Brings to top below numbers, smaller text, cursive
]]
local blips = {
    --[[ Job Related ]]
    {title = "Benny's Original Motorworks", id = 72, x = -211.89, y = -1323.92, c = 46},
    {title = 'Los Santos Mechanics', id = 446, x = -356.33, y = -134.65, c = 46},
    {title = 'Hospital', id = 61, x = 299.23, y = -584.74, c = 59},
    {title = 'Hardware Store', id = 96, x = 44.84, y = -1748.09, c = 2},
    {title = 'Bolingbroke Penitentiary', id = 188, x = 1846.57, y = 2585.82, c = 1, s = 1.2},

    --[[ Dealerships ]]
    {title = 'Dealership', id = 326, x = -38.43, y = -1108.99, c = 2},

    --[[ Banks ]]
    {title = 'Bank', id = 108, x = 150.98, y = -1037.3, c = 69},
    {title = 'Bank', id = 108, x = -1214.41, y = -327.53, c = 69},
    {title = 'Bank', id = 108, x = 315.28, y = -275.6, c = 69},
    {title = 'Bank', id = 108, x = -349.89, y = -46.46, c = 69},
    {title = 'Bank', id = 108, x = 231.63, y = 215.15, c = 69},
    {title = 'Bank', id = 108, x = -2966.21, y = 482.94, c = 69},
    {title = 'Bank', id = 108, x = 1175.24, y = 2703.16, c = 69},
    {title = 'Bank', id = 108, x = -110.89, y = 6462.62, c = 69},

    --[[ Pawn Shops ]]
    --{title = 'Pawn Shop', id = 59, x = 182.76, y = -1319.38, c = 5},
    --{title = 'Pawn Shop', id = 59, x = -1459.34, y = -413.79, c = 5},
    --{title = 'Pawn Shop', id = 59, x = 412.42, y = 314.41, c = 5},

    --[[ Bars ]]
    {title = 'Bar', id = 93, x = 128.81, y = -1298.52, c = 5},
    {title = 'Bar', id = 93, x = -1388.44, y = -586.85, c = 5},
    {title = 'Bar', id = 93, x = -564.56, y = 276.1, c = 5},
    {title = 'Bar', id = 93, x = 1990.79, y = 3053.81, c = 5},

    --[[ Police Stations ]]
    {title = 'Police Station', id = 60, x = 434.29, y = -981.97, c = 30},
    {title = 'Police Station', id = 60, x = -559.15, y = -137.88, c = 30},
    {title = 'Police Station', id = 60, x = 1854.92, y = 3683.59, c = 30},
    {title = 'Police Station', id = 60, x = -443.37, y = 6016.37, c = 30},

    --[[ Stores ]]
    {title = '24/7 Supermarket', id = 52, x = 25.84, y = -1345.58, c = 2},
    {title = '24/7 Supermarket', id = 52, x = 374.36, y = 327.83, c = 2},
    {title = '24/7 Supermarket', id = 52, x = 2555.57, y = 382.34, c = 2},
    {title = '24/7 Supermarket', id = 52, x = -3041.14, y = 585.41, c = 2},
    {title = '24/7 Supermarket', id = 52, x = -3243.97, y = 1001.57, c = 2},
    {title = '24/7 Supermarket', id = 52, x = 547.83, y = 2669.36, c = 2},
    {title = '24/7 Supermarket', id = 52, x = 2677.21, y = 3281.53, c = 2},
    {title = '24/7 Supermarket', id = 52, x = 1960.48, y = 3742.24, c = 2},
    {title = '24/7 Supermarket', id = 52, x = 1730.0, y = 6416.2, c = 2},

    --[[ Bars ]]
    {title = 'Robs Liquor', id = 52, x = 1135.80, y = -982.28, c = 25},
    {title = 'Robs Liquor', id = 52, x = -1222.91, y = -906.98, c = 25},
    {title = 'Robs Liquor', id = 52, x = -1487.55, y = -379.10, c = 25},
    {title = 'Robs Liquor', id = 52, x = -2968.24, y = 390.91, c = 25},
    {title = 'Robs Liquor', id = 52, x = 1166.02, y = 2708.93, c = 25},
    {title = 'Robs Liquor', id = 52, x = 1392.56, y = 3604.68, c = 25},
}

CreateThread(function()
    for _, i in pairs(blips) do
        i.blip = AddBlipForCoord(i.x, i.y, 0.0)
        SetBlipSprite(i.blip, i.id or 1)
        SetBlipDisplay(i.blip, i.d or 2)
        SetBlipColour(i.blip, i.c or 1)
        SetBlipScale(i.blip, i.s or 0.8)
        SetBlipAsShortRange(i.blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString('<FONT FACE="$Font5">'..i.title)
        EndTextCommandSetBlipName(i.blip)
    end
end)
