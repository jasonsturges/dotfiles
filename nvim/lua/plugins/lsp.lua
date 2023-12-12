return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "css-lsp",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
      })
    end,
  },
}
