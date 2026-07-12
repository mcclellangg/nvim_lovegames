-- lua/plugins/love2d.lua
return
{
  enabled = true,
  'S1M0N38/love2d.nvim',
  version = '3.*',
  event = 'VeryLazy',
  opts = {},
  keys = {
    { '<leader>v',  '',                     desc = 'LÖVE' },
    { '<leader>vr', '<cmd>Love run<cr>',    desc = 'Run LÖVE' },
    { '<leader>vw', '<cmd>Love watch<cr>',  desc = 'Watch LÖVE' },
    { '<leader>vi', '<cmd>Love info<cr>',   desc = 'Info LÖVE' },
    { '<leader>vs', '<cmd>Love stop<cr>',   desc = 'Stop LÖVE' },
    { '<leader>vo', '<cmd>Love output<cr>', desc = 'Output panel' },
  },
}
