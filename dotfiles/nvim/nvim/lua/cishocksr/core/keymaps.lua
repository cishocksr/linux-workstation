vim.keymap.set("n", "<leader>pv", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({
		async = true,
	})
end)

vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>")
