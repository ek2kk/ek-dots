return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	lazy = false,
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {
		sources = { "filesystem", "buffers", "git_status", "document_symbols" },
		filesystem = {
			filtered_items = {
				visible = false,
				hide_dotfiles = true,
				hide_gitignored = false,
			},
		},
		default_component_configs = {
			name = {
				use_git_status_colors = true,
				highlight = "NeoTreeFileName",
			},
			git_status = {
				symbols = {
					-- Change type
					added = "",
					modified = "",
					deleted = "✖",
					renamed = "󰁕",
					-- Status type
					untracked = "",
					-- ignored = "",
					-- unstaged = "󰄱",
					-- staged = "",
					-- conflict = "",
					ignored = "I",
					unstaged = "U",
					staged = "S",
					conflict = "C",
				},
			},
		},
	},
}
