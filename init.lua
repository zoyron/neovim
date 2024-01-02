local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local plugins = {
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
},
{
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
local opts = {}

require("lazy").setup(plugins, opts)

-- setting usage keys for telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})


-- Essential vim commands 
vim.cmd.colorscheme "tokyonight-night"
vim.cmd("set clipboard=unnamed")
vim.cmd("inoremap jk <ESC>")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set rnu")
vim.cmd("nnoremap <CR> :nohlsearch<CR><CR>")
vim.cmd("nnoremap j gj")
vim.cmd("nnoremap k gk")
vim.cmd("set backspace=eol,start,indent")
vim.cmd("set ruler")
vim.cmd("set linebreak")
vim.cmd("set showcmd")
vim.cmd("set noshowmode")
vim.cmd("set hlsearch")
vim.cmd("set wrap")
vim.cmd("set whichwrap+=<,>,h,l")
vim.cmd("set laststatus=2")
