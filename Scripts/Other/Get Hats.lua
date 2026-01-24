local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService('ReplicatedStorage')
loadstring(game:HttpGet('https://git.azula.wtf/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Other/sendNotification.lua', true))()

function GetHats(t: table)
    if not LocalPlayer.Character:FindFirstChild('MoonConvertRealChar') then
        sendNotification('Getting Hats!', 7)
        ReplicatedStorage:WaitForChild('01_server'):FireServer('cmd', string.format('-gh %s', tostring(table.concat(t, ' '))))
    else
        sendNotification('Please get hats before reanimating.', 7)
    end
end