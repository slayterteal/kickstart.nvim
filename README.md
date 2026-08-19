# My Personal Neovim Config!

Originally based off of the [Kickstart](https://github.com/nvim-lua/kickstart.nvim) project. 

# Installation Notes

I've commited the grave sin of attempting to use this with Windows, linux, and Mac. Linux and Mac are very simple and easy to manager. Windows... not so much

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
  - Windows - `winget install BurntSushi.ripgrep.MSVC`
- fd
  - a plugin to find elements on the filesystem
  - [pre-build binaries](https://github.com/sharkdp/fd/releases)
  - Mac - `choco install fd`
  - Windows - `winget install sharkdp.fd`
- LazyGit - CLI Git manager
  - [install](https://github.com/jesseduffield/lazygit/releases)
    - LazyGit is purely a Unix/Mac program
  - `choco install lazygit`
