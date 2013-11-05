" Change <Leader>
let mapleader = ","

" .vimrc examples: https://github.com/gmarik/vundle/wiki/Examples

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
        Bundle 'tpope/vim-surround'

        " Emmet for vim
        Bundle 'mattn/emmet-vim'

        " Emmet LiveStyle for Vim
        " In Ubuntu, it's possible install golang with: sudo apt-get install golang-go
        "Bundle 'mattn/livestyle-vim'

        " Better file browser
        Bundle 'scrooloose/nerdtree'
        
            " NERDTree toggle
            map <F3> :NERDTreeToggle<CR>
            
            " NERDTree and tabs together in Vim, painlessly
            Bundle 'jistr/vim-nerdtree-tabs'

                " Show hidden files 
                let NERDTreeShowHidden=1

                " When switching a tab, focus is on the file window, not NERDTree window
                let g:nerdtree_tabs_focus_on_files=1
                "let g:nerdtree_tabs_open_on_console_startup=1

            " Ignore files on NERDTree
            let NERDTreeIgnore = ['\.git/', 'node_modules/', '\.pyc$', '\.pyo$'] 
  
        " Vim plugin for intensely orgasmic commenting 
        Bundle 'scrooloose/nerdcommenter'

            " Overwrite SCSS comment stlye to '// '
            let g:NERDCustomDelimiters = {
                \ 'scss': { 'left': '// ', 'right': '' }
            \ }

        " True Sublime Text style multiple selections for Vim 
        Bundle 'terryma/vim-multiple-cursors'
        
        " Lean & mean statusline for vim that's light as air
        Bundle 'bling/vim-airline'

            let g:airline_powerline_fonts                 = 1

            let g:airline_symbols = {}
            let g:airline_symbols.branch = ''
            
            let g:airline_section_b                       = '%{fugitive#head()}'
            let g:airline#extensions#branch#empty_message = ''

            " A Git wrapper so awesome (to show Git branch in Airline)
            Bundle 'tpope/vim-fugitive'

                " If Fugitive loaded, show branch in statusline
                "set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
        
        " YouCompleteMe
        " A code-completion engine for Vim
        Bundle 'Valloric/YouCompleteMe'

            " Auto closing preview window when accept offered completion string
            let g:ycm_autoclose_preview_window_after_completiona = 1

        " UltiSnips
        " An implementation of TextMates Snippets for the Vim Text Editor
        Bundle 'SirVer/ultisnips'

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

            "filetype plugin indent on
            "let g:EclimCompletionMethod      = 'omnifunc'
            "let g:EclimPhpSearchSingleResult = 'tabnew'
            "let g:EclimPhpValidate           = 0

        " Syntastic
        " Syntax checking hacks for Vim
        Bundle 'scrooloose/syntastic'

            "let g:syntastic_php_php_exe='/opt/lampp/bin/php'

            let g:syntastic_check_on_open  = 1
            let g:syntastic_error_symbol   = '✗'
            let g:syntastic_warning_symbol = '⚠'

            "let g:syntastic_error_symbol = '✗✗'
            "let g:syntastic_style_error_symbol = '✠✠'
            "let g:syntastic_warning_symbol = '∆∆'
            "let g:syntastic_style_warning_symbol = '≈≈'

            let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
            "let g:syntastic_quiet_warnings=1
            "let g:syntastic_ignore_files=['^/usr/include/', '\c\.h$']
            "let g:syntastic_debug = 1

            " :ErrorsClose to close Errors Window
            command ErrorsClose lclose

            " Jump between errors in Error Window (which appears with :Errors)
            nnoremap <silent> <C-[><C-[> :lprev<CR>
            nnoremap <silent> <C-]><C-]> :lnext<CR>

        " Auto Pairs
        " Insert or delete brackets, parens, quotes in pair
        Bundle 'jiangmiao/auto-pairs'

        " Extended session management for Vim 
        "Bundle 'xolox/vim-session'

            " vim-session needs this
            "Bundle 'xolox/vim-misc'

            " No autosave sessions
            "let g:session_autosave = 'no'

        " Vim runtime files for Haml, Sass, and SCSS
        Bundle 'tpope/vim-haml'

        " vim syntax for LESS
        "Bundle 'groenewege/vim-less'

        " EditorConfig plugin for Vim (http://editorconfig.org)
        Bundle 'editorconfig/editorconfig-vim'

        " Generates PHP docblocks
        " Good integratino with SirVer/ultisnips (already defined above)
        Bundle 'tobyS/pdv'
        
            " Vmustache template engine, prerequisite for PDV
            Bundle "tobyS/vmustache"

            let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
            nnoremap <buffer> <C-d> :call pdv#DocumentWithSnip()<CR>

        " Rename the current file in the vim buffer + retain relative path
        "Bundle 'danro/rename.vim'

        " Visually displaying indent levels in code
        Bundle 'nathanaelkane/vim-indent-guides'

            let g:indent_guides_enable_on_vim_startup = 1
            let g:indent_guides_guide_size = 1
            let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

            " http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
            let g:indent_guides_auto_colors = 0
            autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=234
            autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

        " Vertical cursor highlight
        " http://vim.1045645.n5.nabble.com/Fwd-Indentation-Vertical-Lines-td1178645.html#d1278231853000-961
        " set cuc cul 

        " A Vim plugin which shows a git diff in the gutter (sign column)
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
            set wildignore+=*/tmp/*,*/.git/*,*/node_modules/*,*.so,*.swp

        " filtering and alignment
        " https://github.com/vim-scripts/Tabular
        Bundle 'Tabular'

        " MatchParent for HTML tags
        " https://github.com/gregsexton/MatchTag
        "Bundle 'MatchTag'

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
    set history=500
    set undolevels=500

    " Don't break lines in the middle of words
    set linebreak

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
    set colorcolumn=80

    " Highlight actual line
    set cursorline

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

        " Don't screw up folds when inserting text that might affect them,
        " until leaving insert mode. Foldmethod is local to the window.
        " http://vim.wikia.com/wiki/Keep_folds_closed_while_inserting_text
        autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
        autocmd InsertLeave * let &l:foldmethod=w:last_fdm

    " Store swap files in fixed location, not current directory
    " http://stackoverflow.com/a/4331812/922143
    set dir=~/.vim/swap//,/tmp//,.

    " Ctrl+o to autocomplete according the file type
    setlocal omnifunc=syntaxcomplete#Complete
    set cot+=menuone

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
