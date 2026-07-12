-- lua/plugins/telescope.lua
return {
    'nvim-telescope/telescope.nvim', version = '0.2.2',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
	    require('telescope').setup {
		    pickers = {
			    find_files = {
				    theme = "ivy"
			    }
		    }
	    }
	    vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
	    vim.keymap.set("n", "<space>fd", require('telescope.builtin').find_files)
	    -- en for Edit Neovim
	    vim.keymap.set("n", "<space>en", function()
		    require('telescope.builtin').find_files {
			    cwd = vim.fn.stdpath("config")
		    }
	    end)
    end
}
