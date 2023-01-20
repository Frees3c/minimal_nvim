-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
}
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }

  -- Quality of Life
  use { "catppuccin/nvim", as = "catppuccin" }
  vim.cmd.colorscheme "catppuccin"

 -- Bufferline
  use "akinsho/nvim-bufferline.lua"

  -- Lualine
  use "hoob3rt/lualine.nvim"
  use "arkav/lualine-lsp-progress"

  use "folke/which-key.nvim"
  use "kdav5758/TrueZen.nvim"
  use "terrortylor/nvim-comment"

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "nvim-treesitter/playground"
  use "p00f/nvim-ts-rainbow"
  use "windwp/nvim-ts-autotag"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "jose-elias-alvarez/nvim-lsp-ts-utils"


  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  -- NvimTree
  use {
      "nvim-tree/nvim-tree.lua",
      requires = {
        "kyazdani42/nvim-web-devicons" -- optional, for file icon
      }
    }

end)
