-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  --[[
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  ]]
     --

  use { "catppuccin/nvim", as = "catppuccin" }

  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })

  use {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end, }
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("theprimeagen/vim-be-good")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context")


  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      --Prettier
      { 'jose-elias-alvarez/null-ls.nvim' },
      { 'MunifTanjim/prettier.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use("folke/zen-mode.nvim")
  -- use("github/copilot.vim")
  -- use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  use('mhartington/formatter.nvim')

  -- LSP vsCode like icons
  use 'onsails/lspkind-nvim'

  -- nvim file tree. Alternative to NerdTree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require 'nvim-tree'.setup {} end
  }
  --[[use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }]]
  --
  -- Better Comments JS
  use "Djancyp/better-comments.nvim"
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require("lualine").setup()
    end
  }

  -- Greeter
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.theta'.config)
    end
  }

  -- Multiline Selection Tool
  -- use {'mg979/vim-visual-multi'}

  -- Typescript. Oh Typescript. Where art thou Typescript.
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'

  -- Prettier daemon for faster ts/css/js formatting
  -- Needs to be installed on system: $ npm install -g @fsouza/prettierd
  -- use('jose-elias-alvarez/null-ls.nvim')
  -- use 'MunifTanjim/prettier.nvim'

  use("christoomey/vim-tmux-navigator")
  use("terrortylor/nvim-comment")
end)
