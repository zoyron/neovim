
--return {
--  "folke/tokyonight.nvim",
--  lazy = false,
--  priority = 1000,
--  opts = {},
--  config = function()
--    vim.cmd.colorscheme "tokyonight-night"
--  end
--}

--return {
--  "craftzdog/solarized-osaka.nvim",
--  lazy = false,
--  priority = 1000,
--  opts = {},
--  config = function()
--    transparent = true,
--    vim.cmd.colorscheme "solarized-osaka"
--  end
--}

return {
  "shaunsingh/nord.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function ()
    vim.cmd.colorscheme "nord"
  end
}
