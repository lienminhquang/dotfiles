vim.cmd[[
let g:tmux_navigator_no_mappings = 1
]]
vim.api.nvim_set_keymap('n', '<silent> <C-h>', ':TmuxNavigateLeft<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<silent> <C-j>', ':TmuxNavigateDown<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<silent> <C-k>', ':TmuxNavigateUp<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<silent> <C-l>', ':TmuxNavigateRight<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<silent> <C-\\>', ':TmuxNavigatePrevious<cr>', {noremap = true})
