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
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename', 'filestatus'},
        lualine_y = {'progress'},
        lualine_x = {'encoding','diagnostics'}
      },
      tabline = {
        lualine_c = {'buffers'},
        lualine_z = {'tabs'}
      }
    }
  end
}
