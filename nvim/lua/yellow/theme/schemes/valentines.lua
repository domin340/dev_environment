local custom = require("yellow.theme.custom")

local function get_alpha(selection, is_single)
	local random = math.random(2, 3)
	local alpha = is_single and selection[1] or selection[random]
	if not alpha then
		error("random number out of range for valentines theme")
	end
	return alpha
end

local arrows = { "🎔", "❥" }
local alpha_selection = {
	"b_heart",
	"anime.kaguya",
	"anime.fujiwara",
}

return function(today)
	local is_single = true
	local alpha_path = get_alpha(alpha_selection, is_single)
	return custom(alpha_path, arrows)
end
