-- Essential vim commands 
local opt = vim.opt

opt.clipboard = 'unnamed'
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.number = true
opt.relativenumber = true
vim.api.nvim_set_keymap('n', '<CR>', ':nohlsearch<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
opt.backspace = 'eol,start,indent'
opt.linebreak = true
opt.showmode = false
opt.showcmd = true
opt.hlsearch = true
opt.wrap = true
opt.whichwrap:append('<,>,h,l')
opt.termguicolors = true
opt.laststatus = 2
opt.cursorline = true
-- Disable cursorline in insert mode
vim.cmd([[
  augroup CursorLineInsertMode
    autocmd!
    autocmd InsertEnter * set nocursorline
    autocmd InsertLeave * set cursorline
  augroup END
]])
