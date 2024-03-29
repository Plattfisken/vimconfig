return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "csharp_ls",
          "clangd",
          "html",
          "cssls",
          "tsserver"
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.csharp_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.tsserver.setup({})

      local keymap = vim.keymap
      keymap.set("n", "K", vim.lsp.buf.hover, {})
      keymap.set("n", "gd", vim.lsp.buf.definition, {})
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
