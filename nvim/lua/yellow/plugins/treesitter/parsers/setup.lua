local parsers = {}

return function(configs, languagues)
	for _, name in ipairs(languagues) do
		if parsers[name] then
			local conf = parsers[name]()
			configs[name] = conf
		end
	end
end
