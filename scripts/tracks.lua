local mp = require 'mp'

function printFilename()
	channels = mp.get_property('track-list/count')
	mp.commandv("show-text", channels-1)
	if channels-2 ~= 0
		then
		command = ""
		for i = 1,channels-1, 1 do
			command = command .. "[aid" .. i .. "]"
		end
		print(command)
		print(mp.set_property("lavfi-complex", command .. "amix=inputs=" .. channels-1 ..  "[ao]"))
	end
end


mp.add_hook("on_preloaded", 50, printFilename)
