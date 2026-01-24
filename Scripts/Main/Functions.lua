local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
loadstring(game:HttpGet('https://git.azula.wtf/CatThatDrinksSprite/Moon-Convert/raw/main/Scripts/Other/sendNotification.lua', true))()
loadstring(game:HttpGet('https://git.azula.wtf/CatThatDrinksSprite/Moon-Convert/raw/main/Scripts/Other/Run%20Script.lua', true))()
loadstring(game:HttpGet('https://git.azula.wtf/CatThatDrinksSprite/Moon-Convert/raw/main/Scripts/Other/Get%20Hats.lua', true))()

Functions = {
  ['reanimate'] = function()
      if not LocalPlayer.Character:FindFirstChild('MoonConvertRealChar') then
          sendNotification('Moon Convert', 'Reanimating!', 7)
          loadstring(game:HttpGet('https://git.azula.wtf/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Reanimation/MyWorld.lua', true))()
      else
          sendNotification('Moon Convert', 'You are already reanimated.', 7)
      end
  end,
  ['animation man'] = function()
      RunScript('animation%20man')
  end,
  ['asterazuke glitcher'] = function()
      RunScript('asterazuke%20glitcher')
  end,
  ['get hats -h asterazuke glitcher'] = function()
      GetHats({5268555719, 5268602207, 5316479641, 5316549755, 5316539421, 5268710380, 6904794619})
  end,
  ['caducus'] = function()
      RunScript('caducus')
  end,
  ['chips'] = function()
      RunScript('chips')
  end,
  ['get hats -h chips'] = function()
      GetHats({79048497383958})
  end,
  ['elio basio'] = function()
      RunScript('elio%20basio')
  end,
  ['get hats -h elio basio'] = function()
      GetHats({100171532179089})
  end,
  ['holiday feelings'] = function()
      RunScript('holiday%20feelings')
  end,
  ['memeus'] = function()
      RunScript('memeus')
  end,
  ['server admin'] = function()
      RunScript('server%20admin')
  end,
  ['sin dragon'] = function()
      RunScript('sin%20dragon')
  end,
  ['get hats -h sin dragon'] = function()
      GetHats({103553910759670, 80946588383348, 91231828844169})
  end,
  ['sonic'] = function()
      RunScript('sonic')
  end,
  ['soul reaper'] = function()
      RunScript('soul%20reaper')
  end,
  ['get hats -h soul reaper'] = function()
      GetHats({128219376096305})
  end,
}