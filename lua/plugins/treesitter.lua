
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
}
