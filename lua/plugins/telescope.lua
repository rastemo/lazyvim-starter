return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fR",
        require("telescope.builtin").resume,
        desc = "Resume",
      },
      {
        "<leader>/",
        function()
          require("telescope.builtin").live_grep({
            additional_args = { "--hidden", "--smart-case" },
          })
        end,
        desc = "Grep (incl dot files)",
      },
      {
        "<leader><space>",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Find Files (cwd)",
      },
    },
    opts = function()
      local actions = require("telescope.actions")
      return {
        defaults = {
          initial_mode = "normal",
          layout_strategy = "flex",
          layout_config = {
            flex = {
              flip_columns = 190,
            },
          },
          sorting_strategy = "ascending",
          winblend = 0,
          mappings = {
            n = {
              ["<C-t>"] = actions.select_tab,
            },
            i = {
              ["<C-t>"] = actions.select_tab,
              ["<C-h>"] = "which_key",
            },
          },
        },
      }
    end,
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
