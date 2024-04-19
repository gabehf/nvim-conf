return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    format_on_save = function(bufnr)
      if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        return
      end
      return { timeout_ms = 3000, lsp_fallback = true }
    end,
    formatters_by_ft = {
      bash = { "shfmt" },
      sh = { "shfmt" },
      lua = { "stylua" },
      go = { "goimports", "gofumpt", "goimports-reviser" },
      javascript = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      javascriptreact = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
      vue = { { "prettierd", "prettier" } },
      css = { { "prettierd", "prettier" } },
      scss = { { "prettierd", "prettier" } },
      less = { { "prettierd", "prettier" } },
      html = { { "prettierd", "prettier" } },
      json = { { "prettierd", "prettier" } },
      jsonc = { { "prettierd", "prettier" } },
      yaml = { { "prettierd", "prettier" } },
      markdown = { { "prettierd", "prettier" } },
      ["markdown.mdx"] = { { "prettierd", "prettier" } },
      ruby = { { "prettierd", "prettier" } },
    },
  },
  config = function(_, opts)
    require("conform").setup(opts)
  end,
}
