return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'nord',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
      },
      sections = {
        lualine_y = {},
        lualine_x = {'encoding', 'filetype'}
      },
      tabline = {
        lualine_a = {'buffers'},
        lualine_z = {'tabs'}
      }
    }
  end
}
