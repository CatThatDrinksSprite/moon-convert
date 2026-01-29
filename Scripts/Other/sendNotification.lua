function sendNotification(Text: string, Duration: number)
	game:GetService('StarterGui'):SetCore('SendNotification', {
		Title = 'Moon Convert';
		Text = Text;
		Icon = getcustomasset('ScriptBase/moonlogomarcus.jpg');
		Duration = Duration
	})
	task.delay(0,function()
		local notif = Instance.new('Sound')
		notif.SoundId = getcustomasset('ScriptBase/notification.mp3')
		notif.Volume = 0.7
		game:GetService('SoundService'):PlayLocalSound(notif)
		task.delay(5, function()
			notif:Destroy()
		end)
	end)
end
