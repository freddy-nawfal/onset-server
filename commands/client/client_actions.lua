AddEvent("OnKeyPress", function(key)
	if key == 'Y' then
        AddPlayerChat("Ouverture de l'inventaire")
        CallRemoteEvent("commands:inventory")
	end
end)