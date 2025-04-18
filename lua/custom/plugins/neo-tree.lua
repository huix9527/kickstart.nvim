return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "s1n7ax/nvim-window-picker",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        width = 38,
        mappings = {
          ["<esc>"] = "cancel",
          ["s"] = "vsplit_with_window_picker",
          ["S"] = "split_with_window_picker",
        },
      },
      -- event_handlers = {
      --   {
      --     event = "file_opened",
      --     handler = function(file_path)
      --       require("neo-tree.command").execute({ action = "close" })
      --     end
      --   },
      -- },
      filesystem = {
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
        },
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules",
          },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
        },
      },
    })
    vim.keymap.set("n", "<leader>e", "<Cmd>Neotree focus<CR>")
  end,
}
