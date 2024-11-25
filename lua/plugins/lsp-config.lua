return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "clangd", "pyright", "emmet_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities
      })
      lspconfig.emmet_ls.setup({
        capabilities = capabilities
      })
      lspconfig.glsl_analyzer.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n',';ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', ';gl', vim.diagnostic.open_float, {})
    end
  }
}
