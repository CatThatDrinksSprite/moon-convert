-- // notification and sounds
if not isfolder('ScriptBase') then
	makefolder('ScriptBase')
end

if not isfile('ScriptBase/notification.mp3') then
	writefile('ScriptBase/notification.mp3', game:HttpGet('https://github.com/CatThatDrinksSprite/moon-convert/raw/main/ScriptBase/notification.mp3', true))
end

if not isfile('ScriptBase/moonlogomarcus.jpg') then
	writefile('ScriptBase/moonlogomarcus.jpg', game:HttpGet('https://github.com/CatThatDrinksSprite/moon-convert/raw/main/ScriptBase/moonlogomarcus.jpg', true))
end

-- // libraries
loadstring(game:HttpGet('https://github.com/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Main/Functions.lua', true))()
loadstring(game:HttpGet('https://github.com/CatThatDrinksSprite/moon-convert/raw/main/Scripts/Other/sendNotification.lua', true))()
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20Command%20UI%20Library/Source.lua', true))()

-- // main
setclipboard('discord.gg/DPBtncwaEm')
sendNotification('please join the discord, it was set to your clipboard', 7)
if game.PlaceId ~= 123974602339071 then
	sendNotification('please be in just a baseplate', 7)
	return
end

local Window = Library:CreateWindow({
	Name = "Moon Convert",
	IntroText = "Moon Convert",
	IntroIcon = getcustomasset("ScriptBase/moonlogomarcus.jpg"),
	IntroBlur = true,
	IntroBlurIntensity = 15,
	Theme = Library.Themes.purple,
	Position = "bottom",
	Draggable = false,
	Prefix = ";"
})

for commandname, command in pairs(Functions) do
	Window:AddCommand(commandname, {}, "", function()
		command()
	end)
end

-- // chat tags
local userinputService = game:GetService('UserInputService')
local textchatService = game:GetService('TextChatService')

game:GetService('TextChatService').OnIncomingMessage = function(Message)
	if not Message or not Message.TextSource then return end
	local props = Instance.new('TextChatMessageProperties')

	if Message.TextSource.UserId == 850599619 or Message.TextSource.UserId == 10715865997 then
		props.PrefixText = string.format('<font color=\'rgb(111,0,222)\'>[moon convert owner]</font> %s', Message.PrefixText)
	elseif Message.TextSource.UserId == 2553443 then
		props.PrefixText = string.format('<font color=\'rgb(255,0,0)\'>[moon convert co-owner]</font> %s', Message.PrefixText)
	elseif Message.TextSource.UserId == 198956283 or Message.TextSource.UserId == 7836198961 then
		props.PrefixText = string.format('<font color=\'rgb(52,152,219)\'>[moon convert moderator]</font> %s', Message.PrefixText)
	else
		return
	end
	
	return props
end