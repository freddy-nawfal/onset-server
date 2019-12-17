webgui = ImportPackage("webgui")
horizon = ImportPackage("horizon")
json = ImportPackage("json")

AddRemoteEvent("commands:inventory", function(player)
	local p = otherplayer or player

	print("items: ")
	print(json.encode(horizon.GetPlayerData(player).items))

	p = tonumber(p)

	if (not IsValidPlayer(p)) then
		return AddPlayerChat(player, "Selected player does not exist")
	end

	webgui.ShowInventory(
		player, 
		"<span>"..GetPlayerName(p).."("..p..")</span><br><br>\
		Cash: "..horizon.GetPlayerCashFormat(player).."<br>\
		Banque: "..horizon.FormatMoney(horizon.GetPlayerData(player).bank_balance),
		horizon.GetPlayerData(player).items
	)
end)