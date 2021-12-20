let NERDTreeQuitOnOpen = 1
nnoremap <leader>n :NERDTreeFocus<CR>   " Opens (or reopens) the NERDTree if it is not visible, o the cursos is moved to the already-open NERDTree
nnoremap <C-n> :NERDTree<CR>            " Opens a new NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>      " Toogles the visibility of the NERDTree, (acts like :NERDTree if no NERDTree exists on this tab)
nnoremap <C-f> :NERDTreeFind<CR>        " Reveals [<path>] (current file if no path is specified) in the current NERDTree.

let NERDTreeIgnore = ['^__pycache__$[[dir]]']

let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
"let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heavy feature too. default: normal
"let g:NERDTreeGitStatusShowClean = 1 " default: 0

