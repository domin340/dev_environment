local config = require("yellow.config")

local schemes = {
	default = require("yellow.theme.schemes.default"),
	valentines = require("yellow.theme.schemes.valentines"),
}

return function()
	-- prepare arguments
	local today = os.date("*t")

	if config.theme then
		local theme = config.theme

		-- auto
		if theme == "auto" or theme == "default" then
			return schemes.default()
		-- chosen
		elseif type(theme) == "string" then
			local chosen = schemes[theme]
			if not chosen then
				error("invalid theme provided out of all schemes")
			end
			return chosen(today)
		-- custom
		elseif type(theme) == "table" then
			return theme
		end
	end
	-- auto
	return schemes.default(today)
end
