return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  config = function()
    vim.keymap.set('n', 'df', ':Neotree toggle right<CR>', {})
  end
}
