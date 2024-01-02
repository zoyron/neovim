
return {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
{
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
},
