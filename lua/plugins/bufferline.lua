return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.keymap.set("n", "<Tab>", ":BufferLineCyclePrev<CR>")
		vim.keymap.set("n", "<S-Tab>", ":BufferLineCycleNext<CR>")

		vim.keymap.set("n", "<A-<>", "<Cmd>BufferLineMovePrev<CR>")
		vim.keymap.set("n", "<A->>", "<Cmd>BufferLineMoveNext<CR>")

		vim.keymap.set("n", "<A-Z>", ":BufferLineCloseLeft<CR>")
		vim.keymap.set("n", "<A-C>", ":BufferLineCloseRight<CR>")
		vim.keymap.set("n", "<A-X>", ":BufferLineCloseOthers<CR>")
		vim.keymap.set("n", "<A-x>", ":BufferLinePickClose<CR>")

		-- These commands will move the current buffer to the first or the last position in the bufferline
		vim.keymap.set("n", "<A-f>", ":lua require'bufferline'.move_to(1)<CR>")
		vim.keymap.set("n", "<A-l>", ":lua require'bufferline'.move_to(-1)<CR>")

		-- These commands will sort buffers by directory, language, or a custom criteria
		vim.keymap.set("n", "<A-be>", ":BufferLineSortByExtension<CR>")
		vim.keymap.set("n", "<A-bd>", ":BufferLineSortByDirectory<CR>")

		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						separator = true,
						padding = 1,
					},
				},
			},
		})
	end,
}
