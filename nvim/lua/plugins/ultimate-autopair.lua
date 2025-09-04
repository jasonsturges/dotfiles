return {
  "altermo/ultimate-autopair.nvim",
  event = { "InsertEnter", "CmdlineEnter" },
  branch = "v0.6",
  opts = {
    -- Configuration for ultimate-autopair
    tabout = {
      enable = true,
      map = "<tab>", -- Use tab to jump out of pairs
      cmap = "<tab>", -- Use tab in command mode too
      hopout = true, -- Allow hopping out of nested pairs
    },
    space2 = {
      enable = true, -- Enable space padding inside pairs
    },
    cr = {
      enable = true, -- Enable smart enter behavior
      autoclose = true, -- Auto close on enter
    },
    bs = {
      enable = true, -- Enable smart backspace
      space = "balance", -- Balance spaces when deleting
    },
  },
}