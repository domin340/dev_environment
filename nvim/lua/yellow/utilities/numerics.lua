local Numerics = {}

function Numerics.today()
	return os.date("*t")
end

---@param min number
---@param max number
---@return number
function Numerics.random(min, max)
	math.randomseed(os.time())
	return math.random(min, max)
end

return Numerics
