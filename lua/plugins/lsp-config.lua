return {
  -- Mason setup for managing LSP servers
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  -- mason-lspconfig integration for auto-installing LSP servers
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },

  -- nvim-lspconfig setup
  {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
    })

    vim.lsp.config("pyright", {
      capabilities = capabilities,
    })

    -- IMPORTANT: enable the servers
    vim.lsp.enable({
      "lua_ls",
      "pyright",
    })

    -- Keymaps
    vim.keymap.set("n", "K", vim.lsp.buf.hover)
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
  end,
},
}

