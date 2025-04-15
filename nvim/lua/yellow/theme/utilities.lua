local Module = {}
Module.default_arrows = { "🢂", "🢃" }

function Module.defineArrows(closing, open)
	return {
		arrow_closed = closing,
		arrow_open = open,
	}
end

function Module.getArtIndirect(path)
	return require("yellow.art." .. path)
end

function Module:custom(alpha_path, arrows)
	local arrow_close = arrows[1] or self.default_arrows[1]
	local arrow_open = arrows[2] or self.default_arrows[2]

	return {
		alpha = self.getArtIndirect(alpha_path),
		arrows = self.defineArrows(arrow_close, arrow_open),
	}
end

return Module
