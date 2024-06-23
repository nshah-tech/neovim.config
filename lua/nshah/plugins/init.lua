return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary"
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			"nvim-lua/plenary.nvim"
		},
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("trouble").setup()
		end
	},
	{ 'JoosepAlviste/nvim-ts-context-commentstring' },
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
	},
	{ "theprimeagen/harpoon" },
	{ "theprimeagen/refactoring.nvim" },
	{ "theprimeagen/vim-be-good" },
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end
	},
	{ "tpope/vim-fugitive" },
	{ "nvim-treesitter/nvim-treesitter-context" },

	{ "folke/zen-mode.nvim" },
	{ "github/copilot.vim" },
	{ "laytan/cloak.nvim" },
	{ 'mhartington/formatter.nvim' },

	-- LSP vsCode like icons
	{ 'onsails/lspkind-nvim' },

	-- better comments js
	{ "djancyp/better-comments.nvim" },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons' },
		config = function()
			require("lualine").setup()
		end
	},

	-- Which-Key displays a popup with possible key bindings of the command you started typing
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup()
		end
	},

	-- File Tree.
	{
		'kyazdani42/nvim-tree.lua',
		dependencies = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require 'nvim-tree'.setup {} end
	},

	-- Auto pair creates a ")" when you type "("
	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
}
