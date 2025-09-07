return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
		options = {
			icons_enabled = true,
			component_separators = '',
			section_separators = '',
		},
		sections = {
			lualine_a = { 'mode' },
			lualine_b = { 'branch' },
			lualine_c = { 'filename' },
			lualine_x = {},
			lualine_y = {},
			lualine_z = { 'location' },
		},
	}
}
