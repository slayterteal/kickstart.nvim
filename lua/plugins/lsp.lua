return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    config = function()
      require('mason').setup({
        ui = {
          border = "rounded",
        }
      })
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "lua_ls",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      -- TODO: I should consider making used this based off of
      --       especially if we're using configuration for other
      --       random codebases
      vim.lsp.config("clangd", {
        capabilities = capabilities,

        root_markers = {
          "compile_commands.json",
          ".clangd",
          ".git",
        },

        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=detailed",
          "--header-insertion=never",
          "--pch-storage=memory",
          "--offset-encoding=utf-16",
        },

        init_options = {
          clangdFileStatus = true,
        },
      })

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = {
                "vim",
                "Snacks",
              },
            },
          },
        },
      })

      vim.lsp.enable({ "clangd", "lua_ls" })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf

          local function map(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, {
              buffer = bufnr,
              silent = true,
              desc = desc,
            })
          end

          map("gd", function()
            Snacks.picker.lsp_definitions()
          end, "LSP definitions")

          map("gr", function()
            Snacks.picker.lsp_references()
          end, "LSP references")

          map("gI", function()
            Snacks.picker.lsp_implementations()
          end, "LSP implementations")

          map("<leader>ds", function()
            Snacks.picker.lsp_symbols()
          end, "Document symbols")

          map("<leader>ws", function()
            Snacks.picker.lsp_workspace_symbols()
          end, "Workspace symbols")

          map("K", vim.lsp.buf.hover, "Hover")
          map("<leader>rn", vim.lsp.buf.rename, "Rename")
          map("<leader>ca", vim.lsp.buf.code_action, "Code action")
        end,
      })
    end,
  },
}
