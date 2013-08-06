" Change <Leader>
let mapleader = ","

" Exemplos de .vimrc: https://github.com/gmarik/vundle/wiki/Examples

" Vundle
" vim +BundleClean +BundleInstall! +qall

    set nocompatible    " be iMproved
    filetype off        " required!

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " required! 
    Bundle 'gmarik/vundle'

    " Bundles from GitHub repos
        
        " Themes
        Bundle 'tomasr/molokai'

        " quoting/parenthesizing made simple
        " https://github.com/tpope/vim-surround
        Bundle 'tpope/vim-surround'

        " Expanding abbreviation like Zen-coding (Emmet) 
        Bundle 'mattn/zencoding-vim'

        " Better file browser
        Bundle 'scrooloose/nerdtree'
        
            " NERDTree toggle
            map <F3> :NERDTreeToggle<CR>
            
            " NERDTree and tabs together in Vim, painlessly
            " https://github.com/jistr/vim-nerdtree-tabs
            Bundle 'jistr/vim-nerdtree-tabs'

                " Show hidden files 
                let NERDTreeShowHidden=1

                " When switching a tab, focus is on the file window, not NERDTree window
                let g:nerdtree_tabs_focus_on_files=1
                let g:nerdtree_tabs_open_on_console_startup=1

            " Ignore files on NERDTree
            " let NERDTreeIgnore = ['\.pyc$', '\.pyo$'] 
  
        " True Sublime Text style multiple selections for Vim 
        Bundle 'terryma/vim-multiple-cursors'
 
        " Vim plugin for intensely orgasmic commenting 
        Bundle 'scrooloose/nerdcommenter'

            " Overwrite SCSS comment stlye to '// '
            "let g:NERDCustomDelimiters = {
            "    \ 'scss': { 'left': '// ', 'right': '' }
            "\ }
        
        " The ultimate statusline/prompt utility 
        Bundle 'Lokaltog/vim-powerline'
        
        " UltiSnips
        Bundle 'SirVer/ultisnips'

            " UltiSnips configs
            let g:UltiSnipsEditSplit   = 'horizontal'
            let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

            " Mapping UltiSnips to ctrl-j/k to not conflit with YouCompleteMe
            " https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-13713374
            let g:UltiSnipsExpandTrigger       = "<c-j>"
            let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
            let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

        " Eclim
        " The power of Eclipse in your favorite editor
        " http://eclim.org/

            filetype plugin indent on
            let g:EclimCompletionMethod      = 'omnifunc'
            let g:EclimPhpSearchSingleResult = 'tabnew'
            let g:EclimPhpValidate           = 0

        " YouCompleteMe
        " A code-completion engine for Vim
        Bundle 'Valloric/YouCompleteMe'

            " Auto closing preview window when accept offered completion string
            let g:ycm_autoclose_preview_window_after_completion=1

        " Syntastic
        " Syntax checking hacks for Vim
        Bundle 'scrooloose/syntastic'
            
            " :ErrorsClose to close Errors Window
            command ErrorsClose lclose

            " Jump between errors in Error Window (which appears with :Errors)
            nnoremap <silent> <C-[><C-[> :lprev<CR>
            nnoremap <silent> <C-]><C-]> :lnext<CR>

            " let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

        " Auto Pairs
        " Insert or delete brackets, parens, quotes in pair
        Bundle 'jiangmiao/auto-pairs'

        " Snippets files for various programming languages
        " Bundle 'honza/vim-snippets'

        " Extended session management for Vim 
        Bundle 'xolox/vim-session'

            " vim-session needs this
            Bundle 'xolox/vim-misc'

            " No autosave sessions
            let g:session_autosave = 'no'

        " Vim runtime files for Haml, Sass, and SCSS
        Bundle 'tpope/vim-haml'

        " vim syntax for LESS
        Bundle 'groenewege/vim-less'

        " EditorConfig plugin for Vim (http://editorconfig.org)
        " https://github.com/editorconfig/editorconfig-vim
        Bundle 'editorconfig/editorconfig-vim'

        " PHPUnit toolkit for Vim  
        " Bundle 'joonty/vim-phpunitqf'

        " Generates PHP docblocks
        " Good integratino with SirVer/ultisnips (already defined above)
        "Bundle 'tobyS/pdv'
        
            "let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
            "nnoremap <buffer> <C-d> :call pdv#DocumentWithSnip()<CR>

        " Rename the current file in the vim buffer + retain relative path
        Bundle 'danro/rename.vim'

        " Display the indention levels with thin vertical lines
        " https://github.com/Yggdroot/indentLine
        Bundle 'Yggdroot/indentLine'

            let g:indentLine_color_term = 235

        " A Vim plugin which shows a git diff in the gutter (sign column)
        " https://github.com/airblade/vim-gitgutter
        Bundle 'airblade/vim-gitgutter'

    " Bundles from vim-scripts repos

        " General utility functions
        " https://github.com/vim-scripts/genutils
        Bundle 'genutils' 

        " Search results counter
        " https://github.com/vim-scripts/IndexedSearch
        Bundle 'IndexedSearch'

        " Fuzzy file, buffer, mru, tag, ... finder for Vim
        " https://github.com/vim-scripts/ctrlp.vim
        Bundle 'ctrlp.vim'

            " Show hidden files
            let g:ctrlp_show_hidden = 1

            " Exclude files or directories
            set wildignore+=*/tmp/*,*.so,*.swp

        " filtering and alignment
        " https://github.com/vim-scripts/Tabular
        Bundle 'Tabular'

        " MatchParen for HTML tags
        " https://github.com/gregsexton/MatchTag
        Bundle 'MatchTag'

        " vimscript for gist 
        " https://github.com/mattn/gist-vim
        " Bundle 'gist-vim'

    filetype plugin on  " required!
 
    "
    " Brief help
    " :BundleList          - list configured bundles
    " :BundleInstall(!)    - install(update) bundles
    " :BundleSearch(!) foo - search(or refresh cache first) for foo
    " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
    "
    " see :h vundle for more details or wiki for FAQ
    " NOTE : comments after Bundle command are not allowed.
    "





" General configs 

    " vim whit 256 colors
    set t_Co=256
    syntax enable

    " molokai theme
    colorscheme molokai

    " undo leves
    set history=250
    set undolevels=250

    " Automatic word wrapping
    " set tw=72

    " TABs
    set expandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4

    " line numbers
    set nu

    " identing
    set autoindent

    " always show status bar
    set ls=2

    " Search
        
        " incremental search
        set incsearch
        
        " ignore case in search
        set ignorecase
     
        " highlighted search results
        set hlsearch
   
        " highlighted search results; press Space to turn off highlighting
        :nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
 
    " Line length marker
    " http://superuser.com/a/249856
    set colorcolumn=120

    " when scrolling, keep cursor 5 lines away from screen border
    set scrolloff=5

    " Folding and unfolding
    "
    " za : toggle folding
    " zM : fold everything
    " zR : unfold everything
    " zm & zr : get those folds just right
    "
    " http://stackoverflow.com/a/10644424/922143
    set foldmethod=indent   "fold based on indent
    set foldnestmax=10      "deepest fold is 10 levels
    set nofoldenable        "dont fold by default
    set foldlevel=0         "this is just what i use"

    " Store swap files in fixed location, not current directory
    " http://stackoverflow.com/a/4331812/922143
    set dir=~/.vim/swap//,/tmp//,.

    " Ctrl+o to autocomplete according the file type
    setlocal omnifunc=syntaxcomplete#Complete
    set cot+=menuone

    " Ctrl+Space for omni and keyword completion in vim
    " http://stackoverflow.com/a/510571/922143
    " inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
    " \ \"\<lt>C-n>" :
    " \ \"\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
    " \ \"\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
    " \ \"\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
    " imap <C-@> <C-Space>"""

" General commands
" To create commands: http://stackoverflow.com/questions/2001190/adding-a-command-to-vim

    " save as sudo
    ca w!! w !sudo tee "%"

    " remove hidden characters '^M' from Windows® docs
    command AdjustEndOfLine execute '%s/\r\(\n\)/\1/g' 

    " Tabs to spaces
    command Tabs2Spaces execute ':1,$s/\t/  /g'

" Maps/remaps
    
    " Fix the backspace key
    se bs=2

    " Sort selected lines
    vnoremap <F9> :sort<CR>

    " Easier moving of code blocks
    vnoremap < <gv
    vnoremap > >gv

" Abbreviations

    cab W! w!
    cab Q! q!
    cab Wq wq
    cab Wa wa
    cab wQ wq
    cab WQ wq
    cab W w
    cab Q q
