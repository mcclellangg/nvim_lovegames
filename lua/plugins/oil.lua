-- lua/plugins/oil.lua
return {
	enabled = true,
	'stevearc/oil.nvim',
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
	config = function()
		local oil = require("oil")
		oil.setup({
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
			}
		})
	end
}
