return {
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    config = function(_, opts)
      -- dofile(vim.g.base46_cache .. "mason")
      require("mason").setup(opts)
    end,
  },
  { "williamboman/mason-lspconfig.nvim" },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    config = function()
      local lsp_zero = require "lsp-zero"
      lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps { buffer = bufnr }
      end)
      -- here you can setup the language servers
      require("mason").setup {}
      require("mason-lspconfig").setup {
        ensure_installed = {
          "tsserver",
          "rust_analyzer",
          "gopls",
          "clangd",
          "lua_ls",
          "pyright",
        },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup {}
            require("lspconfig").lua_ls.setup {
              settings = {
                Lua = {
                  diagnostics = { globals = { "vim" } },
                },
              },
            }
          end,
        },
      }
    end,
  },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/cmp-nvim-lsp" },
}
