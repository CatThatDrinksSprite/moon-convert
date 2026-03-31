local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
loadstring(game:HttpGet('https://github.com/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Other/sendNotification.lua', true))()
loadstring(game:HttpGet('https://github.com/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Other/Run%20Script.lua', true))()
loadstring(game:HttpGet('https://github.com/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Other/Get%20Hats.lua', true))()

Functions = {
  ['reanimate'] = function()
      if not LocalPlayer.Character:FindFirstChild('MoonConvertRealChar') then
          sendNotification('reanimating!', 7)
          loadstring(game:HttpGet('https://github.com/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Reanimation/MyWorld.lua', true))()
      else
          sendNotification('yo bro i think your already reanimated', 7)
      end
  end,
  ['animationman'] = function()
      RunScript('animation%20man')
  end,
  ['asterazukeglitcher'] = function()
      RunScript('asterazuke%20glitcher')
  end,
  ['asterazukeglitcher-hats'] = function()
      GetHats({5268555719, 5268602207, 5316479641, 5316549755, 5316539421, 5268710380, 6904794619})
  end,
  ['caducus'] = function()
      RunScript('caducus')
  end,
  ['chips'] = function()
      RunScript('chips')
  end,
  ['chips-hats'] = function()
      GetHats({79048497383958})
  end,
  ['eliobasio'] = function()
      RunScript('elio%20basio')
  end,
  ['eliobasio-hats'] = function()
      GetHats({100171532179089})
  end,
  ['holidayfeelings'] = function()
      RunScript('holiday%20feelings')
  end,
  ['holidayfeelings2'] = function()
      RunScript('holiday%20feelings2')
      sendNotification('idk why but this version just changes the hug time, and the sit animation', 7)
  end,
  ['iamthespeed'] = function()
      RunScript('i%20am%20the%20speed')
  end,
  ['iamthespeed-hats'] = function()
      GetHats({125536240856120, 125536240856120})
  end,
  ['memeus'] = function()
      RunScript('memeus')
  end,
  ['moondances'] = function()
      RunScript('moon%20dances')
  end,
  ['serveradmin'] = function()
      RunScript('server%20admin')
  end,
  ['sindragon'] = function()
      RunScript('sin%20dragon')
  end,
  ['sindragon-hats'] = function()
      GetHats({103553910759670, 80946588383348, 91231828844169})
  end,
  ['sonic'] = function()
      RunScript('sonic')
  end,
  ['soulreaper'] = function()
      RunScript('soul%20reaper')
  end,
  ['soulreaper-hats'] = function()
      GetHats({128219376096305})
  end,
}