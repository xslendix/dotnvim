local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  --use 'agude/vim-eldar'
  use {
    'navarasu/onedark.nvim',
    run = function()
      vim.cmd [[ set background=light ]]
      vim.cmd [[ colorscheme onedark ]]
    end
  }
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  use 'Tetralux/odin.vim'

  use 'andweeb/presence.nvim'

  use 'kyazdani42/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim'

  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-context'

  use 'windwp/nvim-autopairs'

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{ 'nvim-lua/plenary.nvim' }}
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end 
  }

  use 'maxbane/vim-asm_ca65'

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function() require("todo-comments").setup { } end
  }

  use {
    "akinsho/toggleterm.nvim", 
    tag = '*', 
  }

  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup()
    end
  }

  use {
    'brymer-meneses/grammar-guard.nvim',
    requires = {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
    }
  }

  use 'unblevable/quick-scope'

  use {
    'ThePrimeagen/git-worktree.nvim',
    config = function() require('git-worktree').setup({}) end
  }

  use 'nvim-telescope/telescope-project.nvim'

  use 'mattn/emmet-vim'
  use 'alvan/vim-closetag'
  use 'AndrewRadev/tagalong.vim'

  use 'Eandrju/cellular-automaton.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

