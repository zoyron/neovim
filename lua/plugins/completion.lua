return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}   -- this is equalent to setup({}) function
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    },
    event = "InsertEnter",
    config = function()
      local luasnip = require("luasnip")
      luasnip.config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
        enable_autosnippets = true,
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      --  "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/cmp-nvim-lsp",
      --  "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      --  { "roobert/tailwindcss-colorizer-cmp.nvim", config = true }
    },
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()
      --local lsp_kind = require("lspkind")
      local cmp_next = function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif require("luasnip").expand_or_jumpable() then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
        else
          fallback()
        end
      end
      local cmp_prev = function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif require("luasnip").jumpable(-1) then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
        else
          fallback()
        end
      end

      --lsp_kind.init()
      ---@diagnostic disable-next-line
      cmp.setup({
        enabled = true,
        preselect = cmp.PreselectMode.None,
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        ---@diagnostic disable-next-line
        view = {
          entries = "bordered",
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = {
          ["<C-d>"] = cmp.mapping.scroll_docs(2),
          ["<C-f>"] = cmp.mapping.scroll_docs(-2),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.close(),
          ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          }),
          -- configuring cmp like super-tab
          ["<tab>"] = cmp_next,
          ["<down>"] = cmp_next,
          ["<S-tab>"] = cmp_prev,
          ["<up>"] = cmp_prev,
          -- super-tab configuration ends here
        },
        sources = {
          { name = "nvim_lsp_signature_help", group_index = 1 },
          { name = "luasnip",                 max_item_count = 5,  group_index = 1 },
          { name = "nvim_lsp",                max_item_count = 20, group_index = 1 },
          { name = "nvim_lua",                group_index = 1 },
          { name = "vim-dadbod-completion",   group_index = 1 },
          { name = "path",                    group_index = 2 },
          { name = "buffer",                  keyword_length = 2,  max_item_count = 5, group_index = 2 },
        },
      })
      local presentAutopairs, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
      if not presentAutopairs then
        return
      end
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
    end,

  }
}
