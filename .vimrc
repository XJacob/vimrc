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
"Bundle 'motemen/git-vim'
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
Bundle 'tomasr/molokai'
Bundle 'maxbrunsfeld/vim-yankstack'
"Bundle 'myusuf3/numbers.vim'
Bundle 'Mark'
Bundle 'terryma/vim-multiple-cursors'
"Bundle 'airblade/vim-gitgutter'
Bundle 'Raimondi/delimitMate'
Bundle 'ciaranm/detectindent'
Bundle 'bronson/vim-trailing-whitespace'
"Bundle 'GrepHere'
"Bundle 'yegappan/grep'
Bundle 'buffergrep'
Bundle 'DrawIt'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'simeji/winresizer'
Bundle 'tpope/vim-pathogen'
Bundle 'tpope/vim-fugitive'
Bundle 'phamer/AnsiEsc'
Bundle 'GrepHere'
Bundle 'GrepCommands'
Bundle 'elzr/vim-json'
Bundle 'SrcExpl'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

call pathogen#infect()

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
let showmarks_enable = 0
"let g:yankstack_map_keys = 0
"==============================================================================
"map
" When you press <leader>r you can search and replace the selected text
"vnoremap <silent> <leader>R :call VisualSelection('replace')<CR>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

"===for lookup file
let g:LookupFile_TagExpr = '"./filenametags"'
"let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreserveLastPattern = 0
"let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_AlwaysAcceptFirst = 1


" Close the current buffer
map <leader>bd :Bclose<cr>

map <leader>u :TMiniBufExplorer<cr>
map <leader>ss :Search <C-R><C-A>
map <leader>sc :SearchReset<cr>
map <leader>et :set expandtab<cr>
map <leader>es :set noexpandtab<cr>

map <leader>vv : Vimwiki2HTML<cr>
map <leader>va : VimwikiAll2HTML<cr>
map <leader>gb :Wgrep /<C-R><C-A>/j

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

"find the trailing space
"map <leader>sp :/\(\S\+\)\@<=\s\+$
"find the spaces before a tab
"map <leader>spt :/ \+\ze\t

nnoremap <silent><F9> :TlistToggle<CR>
"nnoremap <silent><F6> :botright cwindow<CR>
"nnoremap <silent><F7> :ccl<CR>

nnoremap <silent><F2> <C-t><CR>
nnoremap <silent><F3> :cs find g <C-R>=expand("<cword>")<CR><CR>

nnoremap <F8> :grep -riI "<C-R><C-A>" %:p:h/*
nnoremap <silent><F4> :NERDTreeToggle<CR>
inoremap jj <ESC>
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

"folding setting
set foldmethod=indent
set foldnestmax=1
set nofoldenable

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
"set statusline=\ %<%f%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L
"copy from airline default output
let g:airline_section_c ="[%n] %<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#"
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

set listchars=tab:T-
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab
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
command Jsonformat %!python -m json.tool

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

" auto command for auto detec indent
" autocmd BufReadPost * :DetectIndent


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
" => vimwiki
""""""""""""""""""""""""""""""
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_list = [{
    \ 'path' : $HOME.'/Documents/my_wiki/source',
    \ 'path_html' : $HOME.'/Documents/my_wiki/html',
    \ 'template_path': $HOME.'/.vim/vimwiki_html/',
    \ 'template_default': 'def_template',
    \ 'template_ext': '.html',
    \ 'nested_syntaxes' : {'cpp' : 'cpp', 'python' : 'python', 'bash' : 'bash', 'java' : 'java'},
    \ 'auto_export' : 0,
	\ }]
let g:vimwiki_valid_html_tags='script,b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,cente,pre,font,img'

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


"vimwiki syntax highlight
"let g:vimwiki_list = [{'html_header': '~/.vim/vimwiki_html/header.tpl'}]
"
"airline
" let g:airline#extensions#tabline#enabled = 1
"
"

"GrepHere
nmap <Leader>N <Plug>(GrepHereCurrent)

set tags=./tags,./TAGS,tags;~,TAGS;~

set cscopetag
set csto=0

if filereadable("cscope.out")
   cs add cscope.out
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
set cscopeverbose

nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>

" screxpl
" // The switch of the Source Explorer 
nmap cs :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what plugins except
" // itself are using buffers. And you need add their buffer names into below list
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]

" // The color schemes used by Source Explorer. There are five color schemes
" // supported for now - Red, Cyan, Green, Yellow and Magenta. Source Explorer
" // will pick up one of them randomly when initialization.
let g:SrcExpl_colorSchemeList = [
        \ "Red",
        \ "Cyan",
        \ "Green",
        \ "Yellow",
        \ "Magenta"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Workaround for Vim bug @https://goo.gl/TLPK4K as any plugins using autocmd for
" // BufReadPre might have conflicts with Source Explorer. e.g. YCM, Syntastic etc.
let g:SrcExpl_nestedAutoCmd = 1

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" // Set "<F3>" key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = "<F6>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F7>" 
