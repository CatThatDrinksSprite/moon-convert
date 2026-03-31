local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService('ReplicatedStorage')
loadstring(game:HttpGet('https://github.com/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Other/sendNotification.lua', true))()

function GetHats(t: table)
    if not LocalPlayer.Character:FindFirstChild('MoonConvertRealChar') then
        sendNotification('im getting da hats', 7)
        ReplicatedStorage:WaitForChild('01_server'):FireServer('cmd', string.format('-gh %s', tostring(table.concat(t, ' '))))
    else
        sendNotification('i think you needa get hats before reanimating', 7)
    end
end