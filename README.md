## Neovim Config

**Have [Neovim](https://neovim.io/) pre-installed on your device**

Usage is straigtforward. 

    git clone https://github.com/zoyron/neovim.git ~/.config/nvim

After copying the above command, run *nvim* on your terminal, and all the required plugins will be installed

*As of now, this configuration works for mac/linux users only. Support for window devices would be added soon.*

### Some must knows before using:

- You can also use "jk" combination instead of <Esc> key(esc key works as well). To change this keymap, look into nvim/lua/vim-options.lua
- No change has been made to the default leader key.
- It comes with three themes - tokyonight, solarized-osaka, and Nord, with Nord being the default theme. To change the theme or add new theme, look into lua/plugins/theme.lua
