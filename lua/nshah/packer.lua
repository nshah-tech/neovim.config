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

  use { "catppuccin/nvim", as = "catppuccin" }

  use({
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("trouble").setup()
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
  use("github/copilot.vim")
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

  -- 'numToStr/Comment.nvim', is an Alternative
  use("terrortylor/nvim-comment")

  -- Which-Key displays a popup with possible key bindings of the command you started typing
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup()
    end
  }
  -- Auto pair creates a ")" when you type "("
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Folding code structure
  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

  --   use {
  --     "lukas-reineke/indent-blankline.nvim",
  --     config = function()
  --       local highlight = {
  --         "CursorColumn",
  --         "Whitespace",
  --       }
  --       require("ibl").setup {
  --         -- indent = { highlight = highlight, char = "" },
  --         -- whitespace = {
  --         --   highlight = highlight,
  --         --   remove_blankline_trail = false,
  --         -- },
  --         -- scope = { enabled = false },
  --       }
  --     end
  --   }
end)
