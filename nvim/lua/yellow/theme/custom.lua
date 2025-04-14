local ThemeUtilities = require("yellow.theme.utilities")
local default_arrows = { "🢂", "🢃" }

return function(alpha_path, arrows)
	local arrow_close = arrows[1] or default_arrows[1]
	local arrow_open = arrows[2] or default_arrows[2]

	return {
		alpha = ThemeUtilities.getArtIndirect(alpha_path),
		arrows = ThemeUtilities.defineArrows(arrow_close, arrow_open),
	}
end
