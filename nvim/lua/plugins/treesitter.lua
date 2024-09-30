return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cmake",
        "cpp",
        "css",
        "c_sharp",
        "dockerfile",
        "elixir",
        "fish",
        "gitattributes",
        "gitignore",
        "glsl",
        "graphql",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "lua",
        "markdown",
        "scss",
        "sql",
        "svelte",
        "swift",
        "typescript",
        "tsx",
        "wgsl",
        "xml",
        "yaml",
      },
    },

    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = { mdx = "mdx" },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
