return {
	"nvim-telescope/telescope.nvim",
	lazy = true,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("hraesvelgr.configs.telescope")
	end,
}
