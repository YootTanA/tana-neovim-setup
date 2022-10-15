local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- file icons
  use 'glepnir/lspsaga.nvim' -- lsp useful ui
  use 'hoob3rt/lualine.nvim' -- statusline
  use 'L3MON4D3/LuaSnip' -- snippet
  use 'onsails/lspkind-nvim' -- vs-code like pictograms
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use 'neovim/nvim-lspconfig' -- LSP

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- cmp
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer word
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in lsp
  use 'hrsh7th/nvim-cmp' -- completion 
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip' -- snippet completion

  -- go language
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'
end
)

