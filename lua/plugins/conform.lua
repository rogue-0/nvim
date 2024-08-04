return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufWritePre" },
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				vue = { "prettierd" },
			},
			format_after_save = {
				lsp_fallback = true,
				async = true,
			},
		})

		vim.keymap.set({ "n", "v" }, "<S-A-f>", function()
			require("conform").format({
				lsp_fallback = true,
				async = true,
			})
		end)
	end,
}
