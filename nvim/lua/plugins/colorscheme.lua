return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
        styles = {
          sidebars = "transparent",
        },
        on_colors = function(colors) end,
        on_highlights = function(highlights, colors) end,
      }
    end,
  },
}
