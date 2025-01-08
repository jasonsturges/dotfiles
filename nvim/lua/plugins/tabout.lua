return {
  {
    "abecodes/tabout.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" }, -- Ensure Treesitter is installed
    config = function()
      require("tabout").setup({
        tabkey = "<Tab>", -- Key to trigger tabout
        backwards_tabkey = "<S-Tab>", -- Key to trigger backwards tabout
        act_as_tab = true, -- Act as Tab (if at the end of a line)
        enable_backwards = true, -- Enable backwards tabbing
        completion = true, -- If a completion menu is open, tab to select
        ignore_beginning = true, -- Ignore tabbing from the start of a line
        exclude = {}, -- Filetypes to exclude
      })
    end,
  },
}
