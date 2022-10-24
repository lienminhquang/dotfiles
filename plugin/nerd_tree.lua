vim.cmd[[nmap <silent> <leader>t :NERDTreeToggle<CR>]]
vim.cmd[[let g:NERDTreeFileExtensionHighlightFullName = 1]]
vim.cmd[[let g:NERDTreeExactMatchHighlightFullName = 1]]
vim.cmd[[let g:NERDTreePatternMatchHighlightFullName = 1]]
vim.cmd[[let g:NERDTreeHighlightFolders=1]]
vim.cmd[[let g:NERDTreeHighlightFoldersFullName=1]]

-- If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree
vim.cmd[[
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif]]

-- Open the existing NERDTree on each new tab
vim.cmd[[
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
]]

--Start NerdTree when vim is started without file arguments
vim.cmd[[
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree
]]
