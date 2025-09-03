return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Use prettier for markdown formatting
      markdown = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
      -- Add prettier for web languages  
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
    },
  },
}