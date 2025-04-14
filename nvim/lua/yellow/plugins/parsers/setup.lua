local parsers = {
	haxe = require("yellow.plugins.parsers.haxe"),
}

return function(configs)
	for name, handler in pairs(parsers) do
		local info = handler()
		configs[name] = info
	end
end
