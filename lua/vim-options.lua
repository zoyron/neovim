-- Essential vim commands 
local opt = vim.opt

opt.clipboard = 'unnamedplus'
opt.scrolloff = 999
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.number = true
opt.relativenumber = true
vim.api.nvim_set_keymap('n', '<S-t>', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ';bd', ':bd<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<CR>', ':nohlsearch<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
opt.linebreak = true
opt.showmode = false
opt.showcmd = true
opt.ignorecase = true
opt.wrap = true
opt.whichwrap:append('<,>,h,l')
opt.termguicolors = true
opt.laststatus = 2
opt.cursorline = true
opt.splitbelow = true --opens the new window below the current file
opt.splitright = true
opt.inccommand = "split"
-- Disable cursorline in insert mode
vim.cmd([[
  augroup CursorLineInsertMode
    autocmd!
    autocmd InsertEnter * set nocursorline
    autocmd InsertLeave * set cursorline
  augroup END
]])

