return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = { "rose-pine", "catppuccin", "lavi", "tokyonight" },
			livePreview = true,
		})
	end,
}
