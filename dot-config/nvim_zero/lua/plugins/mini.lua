return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      local statusline = require("mini.statusline")
      statusline.setup({ use_icons = true })

      local files = require("mini.files")
      files.setup({})

      local pairs = require("mini.pairs")
      pairs.setup({})
    end,
  },
}
