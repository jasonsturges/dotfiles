return {
  -- catpuccinn
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  -- tokyonight
  { "folke/tokyonight.nvim", priority = 1000 },

  -- solarized-osaka
  {
    "craftzdog/solarized-osaka.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
      },
      on_colors = function(colors) end,
      on_highlights = function(highlights, colors) end,
    },
  },
}
