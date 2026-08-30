# My Personal Neovim Config!

Originally based off of the [Kickstart](https://github.com/nvim-lua/kickstart.nvim) project.

Current in-use Neovim Version: **0.12.5**

# Installation Notes

I've commited the grave sin of attempting to use this with Windows, linux, and Mac. Linux and Mac are very simple and easy to manager. Windows... not so much

> The windows installation instructions are better handled via the windows setup I have in my [dotfiles](https://github.com/slayterteal/.dotfiles).

- Lua (and Luarocks the Lua Package Manager)
    - Mac
        - `choco install lua`
        - `choco install luarocks`
        - This will also install the needed C++ tooling(?)
    - [Lua for Windows](https://github.com/rjpcomputing/luaforwindows)
        - A proper Lua environment is needed to properly run Neovim.
        - This includes `LuaRocks`
- Git
- Ripgrep
  - Mac - `choco install ripgrep`
- fd
  - a plugin to find elements on the filesystem
  - [pre-build binaries](https://github.com/sharkdp/fd/releases)
  - Mac - `choco install fd`
- LazyGit - CLI Git manager
  - [install](https://github.com/jesseduffield/lazygit/releases)
    - LazyGit is purely a Unix/Mac program
  - `choco install lazygit`
- Treesitter CLI
    - `brew install tree-sitter-cli`
