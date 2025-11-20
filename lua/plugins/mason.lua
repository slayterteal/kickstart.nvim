-- Everything you need for an LSP! This might also 
-- include settings related to the debugger.
return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    config = function()
      require('mason').setup({
        ui = {
          border = "rounded",
        }
      });
    end
  },

  -- Mason integration with LSP
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      automatic_installation = true,
    }
  },

  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  }
}