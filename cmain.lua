Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = PlayerPedId()
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					if Config.kickWarning and time == math.ceil(Config.secondsUntilKick / 4) then
						TriggerEvent('chat:addMessage', {
							template = '<div style="padding: 0.45vw; margin: 0.45vw; background: radial-gradient(circle, rgba(0, 0, 0, 0.6) 0%, rgba(0, 0, 0, 0.6) 98%); border-radius: 15px;"><i class="fas fa-server"></i> <b>{0}</div>',
							args = {'^*^7[AFKKICK] ^r| ^1If you continue to stand still, you will be fired from the server!'}
						})
						
					end

					time = time - 1
				else
					TriggerServerEvent("afkkickserver", source)
				end
			else
				time = Config.secondsUntilKick
			end

			prevPos = currentPos
		end
	end
end)