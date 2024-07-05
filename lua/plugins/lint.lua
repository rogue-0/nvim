return {
	"mfussenegger/nvim-lint",
	events = { "BufRedPre", "BufNewFile" },
	config = function()
		require("lint").formatters_by_lint = {
			lua = { "eslint_d" },
			javascript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			vue = { "eslint_d" },
		}

		local lint_agroup = vim.api.nvim_create_augroup("lint", { clear = true })
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_agroup,
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
