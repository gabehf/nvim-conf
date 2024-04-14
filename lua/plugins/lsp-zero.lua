return {
	{
		'williamboman/mason.nvim',
		cmd = { "Mason", "MasonInstall", "MasonUpdate" },
		config = function(_, opts_)
			dofile(vim.g.base46_cache .. "mason")
			require('mason').setup(opts)
		end,
	},
{'williamboman/mason-lspconfig.nvim'},
{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
{'neovim/nvim-lspconfig'},
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/nvim-cmp'},
{'L3MON4D3/LuaSnip'},
}
