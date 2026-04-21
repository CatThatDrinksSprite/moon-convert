local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
loadstring(game:HttpGet('https://github.com/catthatdrinkssprite/moon-convert/raw/main/Scripts/Other/sendNotification.lua', true))()

function RunScript(s: string)
    if LocalPlayer.Character:FindFirstChild('MoonConvertRealChar') then
        sendNotification('ran', 7)
        loadstring(game:HttpGet(string.format('https://github.com/catthatdrinkssprite/moon-convert/raw/main/Scripts/Converts/%s.lua', s), true))()
    else
        sendNotification('use \"reanimate\" first', 7)
    end
end