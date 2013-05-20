set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/MultipleSearch'
Bundle 'vim-scripts/genutils'
Bundle 'Soares/butane.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'msanders/snipmate.vim'
Bundle 'Shougo/neocomplcache'
"Bundle 'rosenfeld/conque-term'
Bundle 'motemen/git-vim'
Bundle 'naseer/logcat'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'bufexplorer.zip'
Bundle 'minibufexpl.vim'
Bundle 'mru.vim'
Bundle 'taglist.vim'
Bundle 'lookupfile'
Bundle 'vimwiki'
Bundle 'autoload_cscope.vim'
Bundle 'tomasr/molokai'
Bundle 'maxbrunsfeld/vim-yankstack'
"Bundle 'myusuf3/numbers.vim'
Bundle 'Mark'
Bundle 'terryma/vim-multiple-cursors'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"==============================================================================
"varaible
let mapleader = ","
let g:mapleader = ","
let g:LookupFile_TagExpr = '"../filenametags"'
let showmarks_enable = 0
"let g:yankstack_map_keys = 0
"==============================================================================
"map
" When you press <leader>r you can search and replace the selected text
"vnoremap <silent> <leader>R :call VisualSelection('replace')<CR>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Close the current buffer
map <leader>bd :Bclose<cr>

map <leader>u :TMiniBufExplorer<cr>
map <leader>ss :Search <C-R><C-A>
map <leader>sc :SearchReset<cr>
map <leader>et :set expandtab<cr>
map <leader>es :set noexpandtab<cr>

map <leader>vv : Vimwiki2HTML<cr>
map <leader>va : VimwikiAll2HTML<cr>
nmap <leader>tt <Plug>VimwikiToggleListItem

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>o :BufExplorer<cr>

"delete bookmark key: C-]
map <leader>fb :FufBookmarkFile<cr>
map <leader>fa :FufBookmarkFileAdd<cr>
map <leader>ff :FufFileWithCurrentBufferDir<cr>

nnoremap <silent><F9> :TlistToggle<CR>
nnoremap <silent><F2> <C-t><CR>
nnoremap <silent><F3> :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent><F6> :botright cwindow<CR>
nnoremap <silent><F7> :ccl<CR>
nnoremap <F8> :grep -riI "<C-R><C-A>" %:p:h/*
nnoremap <silent><F4> :NERDTreeToggle<CR>

"==============================================================================
"feature
syntax enable "Enable syntax hl
set gfn=Monospace\ 11
set guifont=Monospace\ 11
set shell=/bin/bash

"if has("gui_running")
"  set guioptions-=T
"  set t_Co=256
"  set background=dark
"colorscheme koehler
"  set nonu
"else
"  colorscheme zellner
"set background=dark
"  set nonu
"endif

set t_Co=256
set background=dark
colorscheme molokai
set nonu
hi Comment ctermfg=2
hi Underlined ctermfg=3 cterm=underline
hi SpecialKey ctermfg=3
hi Visual ctermbg=88
hi Normal ctermfg=15
set cursorline

set encoding=utf8
set ffs=unix,dos,mac "Default file types
set nobackup
set nowb
set noswapfile

try
    if MySys() == "windows"
      set undodir=C:\Windows\Temp
    else
      set undodir=~/.vim/undodir
    endif
    
    set undofile
catch
endtry

set autoread
set wildmenu "Turn on WiLd menu
set ruler "Always show current position
set cmdheight=2 "The commandbar height
set hid "Change buffer - without saving
set ignorecase "Ignore case when searching
set smartcase
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 
set magic "Set magic on, for regular expressions
set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink
set laststatus=2  " Always hide the statusline

" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

set listchars=tab:T-
set shiftwidth=4
set tabstop=4
set smarttab
set lbr
set tw=500
set ai "Auto indent
set si "Smart indet
"set wrap "Wrap lines
set number
set nocompatible
set showtabline=0

au BufRead,BufNewFile *.logcat set filetype=logcat

"==============================================================================
"visual mode!!
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"==============================================================================
"command
"func! DeleteTrailingWS()
"  exe "normal mz"
"  %s/\s\+$//ge
"  exe "normal `z"
"endfunc
"command! clearspace: call DeleteTralingWS()

"==============================================================================
"plugin config
""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'


""""""""""""""""""""""""""""""
" => Minibuffer plugin
""""""""""""""""""""""""""""""
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1
autocmd BufRead,BufNew :call UMiniBufExplorer

""""""""""""""""""""""""""""""
" => conque
""""""""""""""""""""""""""""""
"let g:ConqueTerm_FastMode = 1
"let g:ConqueTerm_Color = 1
"let g:ConqueTerm_ReadUnfocused = 1
"let g:ConqueTerm_InsertOnEnter = 0
"let g:ConqueTerm_CloseOnEnd = 1
"let g:ConqueTerm_CWInsert = 0

""""""""""""""""""""""""""""""
" => fufuzzyfinder
""""""""""""""""""""""""""""""
let g:fuf_modesDisable = [ 'tag', 'buffertag', 'taggedfile', 'jumplist', 'changelist', 'quickfix', 'mrucmd' ]  

""""""""""""""""""""""""""""""
" => autoload_cscope
""""""""""""""""""""""""""""""
let g:autocscope_menus = 0

""""""""""""""""""""""""""""""
" => vimwiki
""""""""""""""""""""""""""""""
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_list = [{
    \ 'path' : $HOME.'/jacob-old/data/my_wiki/source',
    \ 'path_html' : $HOME.'/jacob-old/data/my_wiki/html',
    \ 'nested_syntaxes' : {'cpp' : 'cpp', 'python' : 'python', 'bash' : 'bash', 'java' : 'java'},
    \ 'auto_export' : 0,
	\ }]
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,cente,pre,font,img'

""""""""""""""""""""""""""""""
" => MRU
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
let g:NERDTreeWinSize = 20
""""""""""""""""""""""""""""""
" => neocomplcache
""""""""""""""""""""""""""""""
" Disable AutoComplPop. 
let g:acp_enableAtStartup = 0 
" Use neocomplcache. 
let g:neocomplcache_enable_at_startup = 1 
" Use smartcase. 
let g:neocomplcache_enable_smart_case = 1 
" Use camel case completion. 
let g:neocomplcache_enable_camel_case_completion = 1 
" Use underbar completion. 
let g:neocomplcache_enable_underbar_completion = 1 
" Set minimum syntax keyword length. 
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_auto_completion_start_length = 7
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' 
let g:neocomplcache_max_keyword_width = 20

" Define dictionary. 
let g:neocomplcache_dictionary_filetype_lists = { 
    \ 'default' : '', 
    \ 'vimshell' : $HOME.'/.vimshell_hist', 
    \ 'scheme' : $HOME.'/.gosh_completions' 
    \ } 

" Define keyword. 
if !exists('g:neocomplcache_keyword_patterns') 
    let g:neocomplcache_keyword_patterns = {} 
endif 
let g:neocomplcache_keyword_patterns['default'] = '\h\w*' 

" Plugin key-mappings. 
imap <C-k>     <Plug>(neocomplcache_snippets_expand) 
smap <C-k>     <Plug>(neocomplcache_snippets_expand) 
inoremap <expr><C-g>     neocomplcache#undo_completion() 
inoremap <expr><C-l>     neocomplcache#complete_common_string() 

" SuperTab like snippets behavior. 
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>" 

" Recommended key-mappings. 
" <CR>: close popup and save indent. 
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>" 
" <TAB>: completion. 
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
" <C-h>, <BS>: close popup and delete backword char. 
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>" 
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>" 
inoremap <expr><C-y>  neocomplcache#close_popup() 
inoremap <expr><C-e>  neocomplcache#cancel_popup() 

"==============================================================================
"temp
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do :help cope if you are unsure what cope is. It's super useful!
"map <leader>cc :botright cope<cr>
"map <leader>n :cn<cr>
"map <leader>p :cp<cr>

"============================================================================
"function
function! CurDir()
    return substitute(getcwd(), '/Users/amir/', "~/", "g")
endfunction


