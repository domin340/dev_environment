local Path = {}

function Path.importArt(subpath)
	return require("yellow.art." .. subpath)
end

return Path
