--Key binding
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', 'C-.', '<cmd>Telescope lsp_code_actions<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gr', '<cmd>Telescope lsp_references<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>Telescope git_status<cr>', {noremap = true})


local actions = require('telescope.actions')
require('telescope').setup{
	defaults = {
		vimgrep_arguments = {
			'rg',
			'--no-heading',
			'--with-filename',
			'--line-number',
			'--column',
			'--smart-case',
			'--ignore',
			'--hiden'
		},
		file_ignore_patterns = {
			'.git',
			'nodemodules'
		},
		prompt_prefix = "🔎 ",
		mappings = {
			i = {
				['<c-k>'] = actions.move_selection_previous,
				['<c-j>'] = actions.move_selection_next,
				['<esc>'] = actions.close,
			}
		}
	},
	pickers = {
		lsp_code_actions = {
			theme = "cursor"
		},
		lsp_workspace_diagnostics = {
			theme = "dropdown"
		}
	}
}
