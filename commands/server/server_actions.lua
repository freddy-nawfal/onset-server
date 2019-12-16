webgui = ImportPackage("webgui")
horizon = ImportPackage("horizon")

AddRemoteEvent("commands:inventory", function(player)
	local p = otherplayer or player

	p = tonumber(p)

	if (not IsValidPlayer(p)) then
		return AddPlayerChat(player, "Selected player does not exist")
	end

	webgui.ShowMessageBox(player, "<span>"..GetPlayerName(p).."("..p..")</span><br><br>\
	Cash: "..horizon.GetPlayerCashFormat(player).."<br>\
	Banque: "..horizon.FormatMoney(horizon.GetPlayerData(player).bank_balance).."<br>\
	<img src=\"http://game/objects/1\">")
end)