return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  opts = {
    direction = "float",
    float_opts = {
      width = 150,
    },
  },
  keys = {
    {
      "<c-/>",
      "<cmd>ToggleTerm<cr>",
      desc = "Toggle Terminal",
    },
  },
}
