if vim.g.vscode then
  -- VSCode Neovim extension configuration
  print 'Loading VSCode Neovim Configuration..\n'
  require 'vscode-init'
  print 'VSCode Neovim Configuration Loaded!'
else
  -- Run the plugin setup.
  require 'cli-univ'
end
