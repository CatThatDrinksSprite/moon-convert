local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
loadstring(game:HttpGet('https://git.azula.wtf/CatThatDrinksSprite/Moon-Convert/raw/main/Scripts/Other/sendNotification.lua', true))()

function RunScript(s: string)
    if LocalPlayer.Character:FindFirstChild('MoonConvertRealChar') then
        sendNotification('Moon Convert', 'Ran!', 7)
        loadstring(game:HttpGet(string.format('https://git.azula.wtf/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Converts/%s.lua', s), true))()
    else
        sendNotification('Moon Convert', 'Please use command \'reanimate\' first.', 7)
    end
end