return {
  {
    'stevearc/conform.nvim',
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
    opts = {
      format_on_save = {
        timeout_ms = 200
      },
      formatters_by_ft = {
        -- Add language specific formatters here:
        -- lua = { 'stylua' },
        -- javascript = { 'prettier' },
        -- typescript = { 'prettier' },
        -- python = { 'black' },
        -- rust = { 'rustfmt' },
        ["_"] = { "trim_whitespace"},
      },
    },
  },
}
