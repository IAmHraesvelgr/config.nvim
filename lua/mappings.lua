require("nvchad.mappings")

local map = vim.keymap.set
local nomap = vim.keymap.del

nomap("n", "<leader>e")
nomap("n", "<C-n>")

nomap("n", "<Esc>")

nomap("n", "<C-s>")
nomap("n", "<C-c>")

nomap("n", "<leader>n")
nomap("n", "<leader>rn")
nomap("n", "<leader>ch")

nomap("n", "<leader>ds")

nomap("n", "<leader>th")

nomap("t", "<C-x>")
nomap("n", "<leader>h")
nomap("n", "<leader>v")
nomap({ "n", "t" }, "<A-v>")
nomap({ "n", "t" }, "<A-h>")
nomap({ "n", "t" }, "<A-i>")

nomap("n", "<leader>wK")
nomap("n", "<leader>wk")

map("i", "jj", "<ESC>")

map("n", "<leader>hs", function()
	vim.cmd("split")
end)
map("n", "<leader>vs", function()
	vim.cmd("vsplit")
end)

map("n", "<leader>ee", vim.cmd.Oil, { desc = "Open oil" })

map("n", "<leader>cc", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>cc", "gc", { desc = "toggle comment", remap = true })

map({ "n", "i", "v" }, "<Up>", "<Nop>")
map({ "n", "i", "v" }, "<Left>", "<Nop>")
map({ "n", "i", "v" }, "<Right>", "<Nop>")
map({ "n", "i", "v" }, "<Down>", "<Nop>")

map("n", "<leader>bc", function()
	require("nvchad.tabufline").close_buffer()
end)

map("n", "<leader>br", function()
	require("nvchad.tabufline").move_buf(1)
end)

map("n", "<leader>bl", function()
	require("nvchad.tabufline").move_buf(-1)
end)

map("n", "<leader>ts", function()
	require("base46").toggle_transparency()
end)

map("n", "<leader>th", function()
	require("nvchad.themes").open({ style = "bordered" })
end)

map("n", "<leader>rr", function()
	require("nvchad.lsp.renamer")()
end)

map("n", "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
