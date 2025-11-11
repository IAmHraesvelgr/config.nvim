require("nvchad.configs.lspconfig").defaults()

local servers = {
	"bashls",
	"clangd",
	"cmake",
	"cssls",
	"html",
	"pyright",
	"ts_ls",
	"gopls",
	"lua_ls",
	"svelte",
	"omnisharp",
}

vim.lsp.config("clangd", {
	cmd = "clangd --header-insertion=never",
})

vim.lsp.enable(servers)
