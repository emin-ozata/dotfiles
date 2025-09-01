return {
	'stevearc/conform.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local conform = require 'conform'

		conform.setup {
			formatters_by_ft = {
				python = {
					'ruff_fix',
					'ruff_format',
					'ruff_organize_imports',
				},
				go = { "goimports" }, -- ya da {"gofmt"}
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		}
	end,
}
