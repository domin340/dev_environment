---@param closed string
---@param open string
---@param date table | nil
local function define_icon_set(closed, open, date)
	return {
		arrow_closed = closed,
		arrow_open = open,
		date = date,
	}
end

-- any other day
local default_state = define_icon_set("🢂", "🢃")

local icon_sets = {
	valentines = define_icon_set(
		"🎔", -- closed
		"❥", -- open
		{ month = 2, day = 14 } -- valentines day date
	),
}

local function compare_dates(target, df)
	for key, value in pairs(target) do
		if df[key] and df[key] ~= value then
			return false
		end
	end
	return true
end

---@class NeoTreeArrows
---@field arrow_open string
---@field arrow_closed string

--- returns a proper icon for files depending on date
--- @return NeoTreeArrows
return function()
	local current_date = os.date("*t")
	for set_name, set in pairs(icon_sets) do
		if set.date and compare_dates(set.date, current_date) then
			-- create a new one without date otherwise neovim type checker complains
			return define_icon_set(set.arrow_closed, set.arrow_open)
		end
	end
	return default_state
end
