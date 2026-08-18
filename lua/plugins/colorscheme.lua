
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        name = 'catppuccin-mocha',
        priority = 1000,
        flavour = 'mocha',
        term_colors = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          -- notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
        },
      }
    end,
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}