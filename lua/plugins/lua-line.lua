return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'nord'
      },
      sections = {
        lualine_y = {},
        lualine_x = {'encoding', 'filetype'}
      },
      tabline = {
        lualine_a = {'buffers'},
        lualine_z = {'tabs'}
      }
    },
    vim.cmd("set laststatus=3")
  end
}
