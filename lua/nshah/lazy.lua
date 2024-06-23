local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = "nshah.plugins",
	change_detection = { notify = false }
})

-- require("lazy").setup({


-- 	use {
-- 		'VonHeikemen/lsp-zero.nvim',
-- 		branch = 'v1.x',
-- 		requires = {
-- 			-- LSP Support
-- 			{ 'neovim/nvim-lspconfig' },
-- 			{ 'williamboman/mason.nvim' },
-- 			{ 'williamboman/mason-lspconfig.nvim' },

-- 			--Prettier
-- 			{ 'jose-elias-alvarez/null-ls.nvim' },
-- 			{ 'MunifTanjim/prettier.nvim' },

-- 			-- Autocompletion
-- 			{ 'hrsh7th/nvim-cmp' },
-- 			{ 'hrsh7th/cmp-buffer' },
-- 			{ 'hrsh7th/cmp-path' },
-- 			{ 'saadparwaiz1/cmp_luasnip' },
-- 			{ 'hrsh7th/cmp-nvim-lsp' },
-- 			{ 'hrsh7th/cmp-nvim-lua' },

-- 			-- Snippets
-- 			{ 'L3MON4D3/LuaSnip' },
-- 			{ 'rafamadriz/friendly-snippets' },
-- 		}
-- 	}





-- 	-- Typescript. Oh Typescript. Where art thou Typescript.
-- 	use 'jose-elias-alvarez/nvim-lsp-ts-utils'

-- 	-- Prettier daemon for faster ts/css/js formatting
-- 	-- Needs to be installed on system: $ npm install -g @fsouza/prettierd
-- 	-- use('jose-elias-alvarez/null-ls.nvim')
-- 	-- use 'MunifTanjim/prettier.nvim'

-- 	use("christoomey/vim-tmux-navigator")

-- 	-- 'numToStr/Comment.nvim', is an Alternative
-- 	use("terrortylor/nvim-comment")

-- 	-- Auto pair creates a ")" when you type "("
-- 	use {
-- 		"windwp/nvim-autopairs",
-- 		config = function() require("nvim-autopairs").setup {} end
-- 	}

-- }, {})
