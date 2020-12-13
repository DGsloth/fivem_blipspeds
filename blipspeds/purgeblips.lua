--[[
    Purge stuff (for events)

    Only 2 blips, make sure X & Y are the same, and shrink the R (radius)
    Make sure the top coord has the bigger radius than the second (i them 1/2 of eachother as shown)
]]
local blipCircles = {
    {x = 0.0, y = 0.0, r = 30.0, c = 1, a = 150},
    {x = 0.0, y = 0.0, r = 15.0, c = 2, a = 150},
}

CreateThread(function()
    for _, i in pairs(blipCircles) do
        i.blipC = AddBlipForRadius(i.x, i.y, 0.0, i.r)
        SetBlipHighDetail(i.blipC, true)
        SetBlipColour(i.blipC, i.c or 1)
        SetBlipAlpha(i.blipC, i.a or 150)
        SetBlipAsShortRange(i.blipC, true)
    end
end)
