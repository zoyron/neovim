
--return {
--  "folke/tokyonight.nvim",
  --lazy = false,
  --priority = 1000,
  --opts = {},
  --config = function()
    --vim.cmd.colorscheme "tokyonight-night"
  --end
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
  "gambhirsharma/vesper.nvim",
  lazy = false,
  priority = 1000,
  config = function ()
   vim.cmd([[colorscheme vesper]])
  end
}
