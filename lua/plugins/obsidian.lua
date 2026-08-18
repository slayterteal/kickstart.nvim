
return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",

  opts = {
    -- Set your vault directory
    workspaces = {
      {
        name = "notes",
        path = vim.fn.expand("C:/Users/slayt/Documents/alecaerdron"),
      },
    },

    completion = {
      nvim_cmp = true, -- enable note/link completion via nvim-cmp
    },

    -- UI tweaks
    ui = {
      enable = true,
    },
  },
}
