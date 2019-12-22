function OnPlayerJoin(player)
	print("[SITANYWHERE] Script Started version 1.0.1a for player: "..GetPlayerName(player))

end
AddEvent("OnPlayerJoin", OnPlayerJoin)



AddRemoteEvent("ChangeSeat", function(player, seat)

   local veh = tonumber(GetPlayerVehicle(player))
   local vehmodel = tonumber(GetVehicleModel(player))
   local seatplace = tonumber(seat)
   		if GetPlayerVehicleSeat(player) == seatplace then
   			print("[SITANYWHERE] Impossible to set seat because seat "..seatplace.." is the player seat")
   		else

   			if GetVehiclePassenger(veh, seatplace) > 0 then
   				print("[SITANYWHERE] Impossible to set seat because seat "..seatplace.." is used by another player")
   			else

   				SetPlayerInVehicle(player, veh, seatplace)
   			end
   		end


end)