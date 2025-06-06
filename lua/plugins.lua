return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'nvimtools/none-ls.nvim'
  use 'nvim-neotest/nvim-nio'  
  use({
      "nvim-neotest/neotest",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-neotest/neotest-python",
        "mfussenegger/nvim-dap"

      }
    })
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use 'github/copilot.vim'
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'mfussenegger/nvim-dap' }
  use { 'mfussenegger/nvim-dap-python' }
  use { 'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'} }
end)

