return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				file_ignore_patterns = { "node_modules" },
			},
		})

		require("telescope").load_extension("file_browser")

		-- open file_browser with the path of the current buffer
		vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

		-- Alternatively, using lua API
		vim.keymap.set("n", "<space>fb", function()
			require("telescope").extensions.file_browser.file_browser()
		end)
	end,
}
