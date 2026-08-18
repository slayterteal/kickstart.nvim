
return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },

  opts = {
    signs = {
      add          = { text = "│" },
      change       = { text = "│" },
      delete       = { text = "󰍵" },
      topdelete    = { text = "󰍵" },
      changedelete = { text = "~" },
    },
    signcolumn = true,
    numhl = false,
    linehl = false,
    word_diff = false,

    watch_gitdir = {
      interval = 1000,
      follow_files = true,
    },

    attach_to_untracked = true,
    current_line_blame = false,  -- set to true if you want inline blame

    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      -- Keymaps (safe defaults)
      local function map(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
      end

      map("n", "]h", gs.next_hunk, "Next Git Hunk")
      map("n", "[h", gs.prev_hunk, "Prev Git Hunk")
      map("n", "<leader>hs", gs.stage_hunk, "Stage Hunk")
      map("n", "<leader>hr", gs.reset_hunk, "Reset Hunk")
      map("n", "<leader>hp", gs.preview_hunk, "Preview Hunk")
      map("n", "<leader>hb", gs.blame_line, "Blame Line")
      map("n", "<leader>hd", gs.diffthis, "Diff This File")
      map("n", "<leader>hu", gs.undo_stage_hunk, "Undo Stage Hunk")
    end,
  },
}
