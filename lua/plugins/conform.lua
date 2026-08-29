return {
  {
    'stevearc/conform.nvim',
    opts = {
      event = { 'BufWritePre' }, -- lazy-load, but not for autoformatting
      cmd = { 'ConformInfo' },
      keys = {
        -- Add a command to handle formatting
        {
          '<leader>cf',
          function()
            require('conform').format { async = true, lsp_format = 'fallback' }
          end,
          mode = '',
          desc = 'Format buffer [Conform]',
        },
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        python = { 'black' },
        rust = { 'rustfmt' },
      },
    },
  },
}
