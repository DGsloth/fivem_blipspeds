local userName = 'DGsloth'
local addonName = 'fivem_blipspeds'
PerformHttpRequest('https://raw.githubusercontent.com/'..userName..'/'..addonName..'/main/version.txt', function(err, serverVersion, headers)
    local version = '1.1'
    if string.find(serverVersion, version) == nil then
        print('^4ADDON: ^3', GetCurrentResourceName(), ' ^7[^1OUTDATED^7] - https://github.com/'..userName..'/'..addonName)
    else
        print('^4ADDON: ^3', GetCurrentResourceName(), ' ^7[^2UPDATED^7]')
    end
end)