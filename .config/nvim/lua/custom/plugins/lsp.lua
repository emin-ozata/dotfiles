return {
	vim.lsp.config("pyright", {
		settings = {
			pyright = { disableOrganizeImports = true },
			python = { analysis = { ignore = { "*" } } },
		},
	}),
	vim.lsp.config("ruff", {
		init_options = {
			settings = {},
		},
	}),

	vim.lsp.enable("ruff"),
	vim.lsp.enable("pyright"),
}
