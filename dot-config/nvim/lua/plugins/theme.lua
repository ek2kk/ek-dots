-- return {
-- 	"scottmckendry/cyberdream.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 		transparent = true,
-- 		italic_comments = true,
-- 		borderless_telescope = false,
-- 	},
-- } 
return {
    "AlphaTechnolog/pywal.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("pywal").setup()
    end,
}

