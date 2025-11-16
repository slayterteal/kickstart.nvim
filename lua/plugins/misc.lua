-- Misc plugins that I don't think need an entire file.

return {
  {
    'nvim-tree/nvim-web-devicons',
    opts = {}
  },
  {
    "hrsh7th/nvim-cmp",
    -- load cmp on InsertEnter
    event = "InsertEnter",
    -- these dependencies will only be loaded when cmp loads
    -- dependencies are always lazy-loaded unless specified otherwise
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
    },
    config = function()
      -- ...
    end,
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
