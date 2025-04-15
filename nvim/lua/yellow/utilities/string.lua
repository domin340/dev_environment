local String = {}

---@param str string
---@param chars string
---@return table<string>
function String.split(str, chars)
	local regex = "([^" .. chars .. "]+)"
	local collection = {}

	for fragment in string.gmatch(str, regex) do
		table.insert(collection, fragment)
	end

	return collection
end

return String
