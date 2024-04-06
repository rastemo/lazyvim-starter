return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    default_component_configs = {
      indent = {
        expander_collapsed = "❯",
      },
    },
    filesystem = {
      filtered_items = {
        -- hide_hidden = false,
        hide_dotfiles = false,
      },
    },
  },
}
