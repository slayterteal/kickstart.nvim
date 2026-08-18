-- Misc plugins that I don't think need an entire file.

return {
  {
    'nvim-tree/nvim-web-devicons',
    opts = {}
  },

  -- plugin to auto close brackets/parenthesis/etc
  {
    'm4xshen/autoclose.nvim',
    config = function()
      require('autoclose').setup {
        keys = {
          ["'"] = { escape = true, close = false, pair = "''", disabled_filetypes = {} },
        },
      }
    end,
  },
}
