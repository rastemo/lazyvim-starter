return {
  "hrsh7th/nvim-cmp",
  keys = {
    { "<C-Space>", false },
    { "<C-e>", false },
    { "<CR>", false },
    { "<S-CR>", false },
    { "<C-CR>", false },
  },
  opt = function()
    local cmp = require("cmp")
    return {
      mapping = {
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<S-CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<C-CR>"] = function(fallback)
          cmp.abort()
          fallback()
        end,
      },
    }
  end,
}
