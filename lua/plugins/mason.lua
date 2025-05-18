return {
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
  opts = {
    ensure_installed = {
      "bash-language-server",
      "css-lsp",
      "elixir-ls",
      "html-lsp",
      "cfn-lint",
      "checkstyle",
      "google-java-format",
      "prettier",
      "templ",
    },
  },
}
