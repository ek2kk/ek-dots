-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     vim.cmd.colorscheme("tokyonight-night")
--   end,
-- }
-- return {
--   {
--     "olimorris/onedarkpro.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require("onedarkpro").setup({
--         options = {
--           transparency = true,
--         },
--         highlights = {
--           Comment = { italic = true },
--           Directory = { bold = true },
--           ErrorMsg = { italic = true, bold = true },
--         },
--         styles = {
--           types = "NONE",
--           methods = "NONE",
--           numbers = "NONE",
--           strings = "NONE",
--           comments = "italic",
--           keywords = "bold,italic",
--           constants = "NONE",
--           functions = "italic",
--           operators = "NONE",
--           variables = "NONE",
--           parameters = "NONE",
--           conditionals = "italic",
--           virtual_text = "NONE",
--         },
--       })
--       vim.cmd("colorscheme onedark_dark")
--     end,
--   },
-- }
return {
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("oldworld").setup({})
      vim.cmd.colorscheme("oldworld")
    end,
  },
}
