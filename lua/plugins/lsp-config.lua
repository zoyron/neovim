return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- Configure LSP servers using vim.lsp.config (Neovim 0.11+)
      vim.lsp.config('lua_ls', {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }
            }
          }
        }
      })

      vim.lsp.config('ts_ls', {
        capabilities = capabilities
      })

      vim.lsp.config('clangd', {
        capabilities = capabilities
      })

      vim.lsp.config('pyright', {
        capabilities = capabilities
      })

      vim.lsp.config('emmet_ls', {
        capabilities = capabilities,
        filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" }
      })

      vim.lsp.config('glsl_analyzer', {
        capabilities = capabilities
      })

      -- Enable the configured servers
      vim.lsp.enable({ 'lua_ls', 'ts_ls', 'clangd', 'pyright', 'emmet_ls', 'glsl_analyzer' })

      -- Keymaps
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', ';ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', ';gl', vim.diagnostic.open_float, {})
    end
  }
}
