return {
  vim.lsp.config('pyright', {
    settings = {
      pyright = { disableOrganizeImports = true },
      python = { analysis = { ignore = { '*' } } },
    },
  }),

  vim.lsp.enable 'ruff',
  vim.lsp.enable 'pyright',
}
