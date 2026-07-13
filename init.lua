local uv = vim.uv
print("Using: " .. uv.os_getenv("NVIM_APPNAME"))

require("config.lazy")

--Enable colorschme
vim.cmd("colorscheme miniwinter")

-- ==== GREAT Advent of Neovim ====
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Basic
vim.opt.linebreak = true
vim.opt.wrap = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.api.nvim_set_hl(0, "Comment", { fg = "#FF2A54", italic = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank({higroup='Visual', timeout=350})
  end,
})

-- ==== Terminal
vim.api.nvim_create_autocmd('TermOpen', {
  desc = 'Custom terminal setup',
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.relativenumber = false
    vim.opt.linebreak = false
  end,
})

vim.keymap.set("n", "<space>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 5)
end)

-- Dir Tree
vim.keymap.set("n", "<space>dt", function()
  vim.cmd.vnew()
  vim.cmd.wincmd("H") --move to far left
  vim.api.nvim_win_set_width(0, 30)
  vim.cmd("Oil")
end)

-- Enable lsps
vim.lsp.enable("lua_ls")
-- vim.lsp.enable("ty")
