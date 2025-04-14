local Module = {}

function Module.defineArrows(closing, open)
	return {
		arrow_closed = closing,
		arrow_open = open,
	}
end

function Module.getArtIndirect(path)
	return require("yellow.art." .. path)
end

return Module
