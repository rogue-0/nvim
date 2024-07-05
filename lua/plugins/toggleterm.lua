return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		vim.keymap.set(
			"n",
			"<leader>tf",
			"<cmd>ToggleTerm direction=float<cr>",
			{ desc = "ToggleTerm | Float Terminal", silent = true }
		)

		vim.keymap.set(
			"n",
			"<leader>th",
			"<cmd>ToggleTerm direction=horizontal<cr>",
			{ desc = "ToggleTerm | Horizontal Terminal", silent = true }
		)

		vim.keymap.set(
			"n",
			"<leader>tv",
			"<cmd>ToggleTerm direction=vertical<cr>",
			{ desc = "ToggleTerm | Vertical Terminal", silent = true }
		)

		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<c-\>]],
			shade_filetypes = {},
			hide_numbers = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			direction = "horizontal",
			close_on_exit = true,
			float_opts = {
				border = "curved",
				winblend = 2,
				title_pos = "left",
			},
		})

		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "I", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end

		-- if you only want these mappings for toggle term use term://*toggleterm#* instead
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
	end,
}
