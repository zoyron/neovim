return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'nord',
        { 
          section_separators = '',
          component_separators = '' 
        }
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
