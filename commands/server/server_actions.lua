AddRemoteEvent("commands:inventory", function(player)
	local p = otherplayer or player

	p = tonumber(p)

	if (not IsValidPlayer(p)) then
		return AddPlayerChat(player, "Selected player does not exist")
	end

	ShowMessageBox(player, "<span>"..GetPlayerName(p).."("..p..")</span><br><br>\
	Cash: "..GetPlayerCashFormat(p).."<br>\
	Banque: "..FormatMoney(PlayerData[p].bank_balance).."<br>\
	<img src=\"http://game/objects/1\">")
end)