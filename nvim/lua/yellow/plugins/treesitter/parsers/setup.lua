local parsers = {
	haxe = require("yellow.plugins.treesitter.parsers.haxe"),
}

return function(configs, languagues)
	for _, name in ipairs(languagues) do
		if parsers[name] then
			configs[name] = parsers[name]()
		end
	end
end
