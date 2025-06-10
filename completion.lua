return {
  -- Completion engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP source only
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
      })
    end
  },

  {
     'neovim/nvim-lspconfig',
     event = { "BufReadPre", "BufNewFile" },
     config = function()
       local capabilities = require("cmp_nvim_lsp").default_capabilities()
       local lspconfig = require("lspconfig")
       lspconfig.clangd.setup({
         capabilities = capabilities,
       })
       lspconfig.gopls.setup({
         capabilities = capabilities,
       })
     end
  }
}
