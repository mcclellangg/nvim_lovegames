-- lua/plugins/mini.lua
return {
	enabled = true,
	'nvim-mini/mini.nvim', 
	version = '*',
	opts = {
		statusline = {use_icons = true},
		icons = { style = "glyph" }
	},

	config = function(_, opts)
	  for module_name, module_opts in pairs(opts) do
	    require('mini.' .. module_name).setup(module_opts)
	  end
	end
      }
