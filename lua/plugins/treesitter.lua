
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "json",
      "javascript",
      "typescript",
      "tsx",
      "go"
      -- add languages you need
    },
  },
  highlight = {
    enable = true,
    -- disable = { "html" }, -- examples if a parser is unstable
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
  },

  -- optional playground (useful for debugging)
  playground = {
    enable = false,         -- set true if you want the playground UI
    updatetime = 25,
  },

  matchup = {
    enable = true, -- if you use romainl's vim-matchup
  },

  -- incremental selection (optional)
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  -- optional: friendly message after install (not required)
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
