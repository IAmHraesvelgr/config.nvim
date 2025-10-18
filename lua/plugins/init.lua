return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = require("configs.conform"),
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{ import = "nvchad.blink.lazyspec" },
	{
		"Saghen/blink.cmp",
		opts = {
			fuzzy = {
				prebuilt_binaries = {
					download = false,
				},
				implementation = "lua",
			},
		},
		completion = {
			ghost_text = { enabled = true },
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 0,
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"c",
				"cpp",
				"c_sharp",
				"python",
				"html",
				"css",
				"javascript",
				"typescript",
				"cmake",
				"lua",
				"luadoc",
				"printf",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
			},
		},
	},
}
