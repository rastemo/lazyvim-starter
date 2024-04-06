return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    --@type lspconfig.options
    servers = {
      tsserver = {
        root_dir = require("lspconfig").util.root_pattern(
          "rush.json",
          "tsconfig.json",
          "package.json",
          "jsconfig.json",
          ".git"
        ),
      },
      ocamllsp = {},
      -- graphql = {},
      yamlls = {},
      bashls = {},
      html = {},
      css_variables = {},
      cssls = {},
    },
  },
}
