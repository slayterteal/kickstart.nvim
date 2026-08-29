return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local parsers = {
      "lua",
      "vim",
      "vimdoc",
      "json",
      "javascript",
      "typescript",
      "tsx",
      "go",
    }

    -- installs parsers (async; safe to call every startup, it's a no-op if already installed)
    require("nvim-treesitter").install(parsers)

    -- highlighting + indent are now enabled per-filetype via autocmd,
    -- not a global setup() table
    vim.api.nvim_create_autocmd("FileType", {
      pattern = parsers,
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
