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
          "html",
          "htmx",
          "emmet_ls",
          "templ",
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
            require("lspconfig").emmet_ls.setup {
              -- on_attach = on_attach,
              capabilities = capabilities,
              filetypes = {
                "css",
                "eruby",
                "html",
                "javascript",
                "javascriptreact",
                "less",
                "sass",
                "scss",
                "svelte",
                "pug",
                "typescriptreact",
                "vue",
                "templ",
              },
              init_options = {
                html = {
                  options = {
                    -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                    ["bem.enabled"] = true,
                  },
                },
              },
            }
            require("lspconfig").htmx.setup {
              filetypes = { "html", "templ" },
            }
          end,
        },
      }
    end,
  },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/cmp-nvim-lsp" },
}
