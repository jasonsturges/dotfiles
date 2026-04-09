-- ~/.config/nvim/lua/plugins/claudecode.lua
return {
  "coder/claudecode.nvim",
  opts = {
    terminal = {
      snacks_win_opts = {
        position = "float",
        width = 0.85,
        height = 0.85,
        border = "rounded",
      },
    },
  },
}
