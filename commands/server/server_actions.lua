webgui = ImportPackage("webgui")

AddRemoteEvent("commands:inventory", function(player)
	local p = otherplayer or player

	p = tonumber(p)

	if (not IsValidPlayer(p)) then
		return AddPlayerChat(player, "Selected player does not exist")
	end

	webgui.ShowMessageBox(player, "<span>".."Mon frère".."("..p..")</span><br><br>\
	Cash: ".."1234€".."<br>\
	Banque: ".."654€".."<br>\
	<img src=\"http://game/objects/1\">")
end)