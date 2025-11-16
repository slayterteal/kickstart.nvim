-- A new neovim install that will hopefully work more on windows.

require 'util/util'

require 'lazy-nvim-install'
lazy_install_if_needed()

-- Do some basic vim setup.
require 'vim'

require("lazy").setup({
  spec = {
    { import = 'plugins' } -- see the ./plugins directory for plugin config
  },
  checker = { enabled = true }
})
