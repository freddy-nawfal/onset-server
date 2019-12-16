AddEvent("OnKeyPress", function(key)
	if IsCtrlPressed() and key == 'Y' then
        AddPlayerChat("You have pressed CTRL + Y")
        CallRemoteEvent("commands:inventory")
	end
end)