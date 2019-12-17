json = require "json"


function ShowInventory(money, inventory)
	ExecuteWebJS(WebGuiId, "ShowInventory('"..Base64Encode(money)..", "..Base64Encode(json.encode(inventory)).."');")
	SetWebVisibility(WebGuiId, WEB_VISIBLE)
	ShowMouseCursor(true)
	SetInputMode(INPUT_UI)
end
AddRemoteEvent("ShowInventory", ShowInventory)

function HideInventory()
	ExecuteWebJS(WebGuiId, "HideInventory();")
	SetWebVisibility(WebGuiId, WEB_HITINVISIBLE)
	ShowMouseCursor(false)
	SetInputMode(INPUT_GAME)
end
AddRemoteEvent("HideInventory", HideInventory)