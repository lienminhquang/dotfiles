return require('packer').startup(function()
	-- packger can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	use 'gruvbox-community/gruvbox'

	-- use 'neovim/nvim-lspconfig'

	-- use 'nvim-lua/lsp-status.nvim'

	use 'dart-lang/dart-vim-plugin'
        use 'Neevash/awesome-flutter-snippets'

        -- use 'thosakwe/vim-flutter'

	-- use 'natebosch/vim-lsc'
	-- use 'natebosch/vim-lsc-dart'
        use 'hrsh7th/vim-vsnip'
        use 'hrsh7th/vim-vsnip-integ'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = {{ 'nvim-lua/plenary.nvim' }}
	}
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	
	use 'scrooloose/nerdtree'
	use {
		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Hightlight the line of the cursor
	use 'miyakogi/conoline.vim'

	-- Git manage
	use 'tpope/vim-fugitive'

	use 'tpope/vim-surround'
	use 'jiangmiao/auto-pairs'

	use 'kyazdani42/nvim-web-devicons'
	use {
  		'romgrk/barbar.nvim',
  		requires = {'kyazdani42/nvim-web-devicons'}
	}

	-- Format code
	use 'sbdchd/neoformat'

	use {
		'neoclide/coc.nvim', branch = 'release'
	}

	use 'junegunn/fzf.vim'


	-- Tmux
	use 'christoomey/vim-tmux-navigator'


end)
