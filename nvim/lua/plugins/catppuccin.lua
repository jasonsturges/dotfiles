return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
      show_end_of_buffer = false,
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = function(colors)
        return {
          -- Neo-tree specific highlights
          NeoTreeNormal = { bg = "none" },
          NeoTreeNormalNC = { bg = "none" },
          NeoTreeFloatBorder = { bg = "none", fg = colors.overlay0 },
          NeoTreeFloatTitle = { bg = "none", fg = colors.text },
          NeoTreeTitleBar = { bg = "none", fg = colors.text },
          -- Treesitter context (if using nvim-treesitter-context)
          TreesitterContext = { bg = "none" },
          TreesitterContextLineNumber = { bg = "none", fg = colors.overlay0 },
          -- General floating windows
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none", fg = colors.overlay0 },
          -- Optional: Ensure other UI elements are transparent
          SignColumn = { bg = "none" },
          LineNr = { bg = "none" },
          CursorLineNr = { bg = "none" },
        }
      end,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true, -- Note: This is for nvim-tree, not neo-tree; see below
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- Add neo-tree integration explicitly
        neo_tree = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
