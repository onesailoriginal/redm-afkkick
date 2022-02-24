RegisterServerEvent("afkkickserver")
AddEventHandler("afkkickserver", function(player)
    local id =  tonumber(playerId)
	
    DropPlayer(source, "[Onesail-AFKKICK]you have been kicked from the server. (for too long AFK) ") -- kick
        if Config.printmessage then
             print("Player kicked:", source)
        end
	
end)