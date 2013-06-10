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
        
        " Implements some of TextMate's snippets features in Vim
        Bundle 'msanders/snipmate.vim'

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

                " When switching a tab, focus is on the file window, not NERDTree window
                let g:nerdtree_tabs_focus_on_files=1
                " let g:nerdtree_tabs_open_on_console_startup=1


            " Ignore files on NERDTree
            " let NERDTreeIgnore = ['\.pyc$', '\.pyo$'] 
  
        " True Sublime Text style multiple selections for Vim 
        Bundle 'terryma/vim-multiple-cursors'
 
        " Vim plugin for intensely orgasmic commenting 
        Bundle 'scrooloose/nerdcommenter'
        
        " The ultimate statusline/prompt utility 
        Bundle 'Lokaltog/vim-powerline'
        
        " :ConqueTerm <program|command> 
        Bundle 'rosenfeld/conque-term'

        " Pending tasks list
        Bundle 'fisadev/FixedTaskList.vim'

        " Autoclose
        Bundle 'Townk/vim-autoclose'

        " Snippets files for various programming languages
        " Bundle 'honza/vim-snippets'

        " Extended session management for Vim 
        Bundle 'xolox/vim-session'

            " vim-session needs this
            Bundle 'xolox/vim-misc'

            " No autosave sessions
            let g:session_autosave = 'no'

        " vim syntax for LESS
        Bundle 'groenewege/vim-less'

        " EditorConfig plugin for Vim (http://editorconfig.org)
        " https://github.com/editorconfig/editorconfig-vim
        Bundle 'editorconfig/editorconfig-vim'

        " PHP QA tools for Vim
        " Bundle 'joonty/vim-phpqa'
            
            " The location list opening automatically
            "let g:phpqa_open_loc = 1

            " PHP executable
            "let g:phpqa_php_cmd = '/opt/lampp/bin/php'

            " PHP Code Sniffer binary
            "let g:phpqa_codesniffer_cmd = '/usr/bin/phpcs'
                
                " Set the codesniffer args (default = '--standard=PHPCS')
                " http://pear.php.net/manual/pt_BR/package.php.php-codesniffer.annotated-ruleset.php
                "let g:phpqa_codesniffer_args = \"--standard=Zend"

                " Run codesniffer on save (default = 1)
                "let g:phpqa_codesniffer_autorun = 1

            " PHP Mess Detector binary
            "let g:phpqa_messdetector_cmd = '/usr/bin/phpmd'
            
                " Ruleset XML file
                " http://phpmd.org/documentation/index.html
                "let g:phpqa_messdetector_ruleset = '/opt/lampp/htdocs/www/phpmd/ruleset.xml'

                " Run messdetector on save (default = 1)
                "let g:phpqa_messdetector_autorun = 1

            " Show code coverage on load (default = 0)
            " let g:phpqa_codecoverage_autorun = 0

            " Clover code coverage XML file
            " let g:phpqa_codecoverage_file = '/path/to/clover.xml'
            
            " Show markers for lines that ARE covered by tests (default = 1)
            " let g:phpqa_codecoverage_showcovered = 0

        " PHPUnit toolkit for Vim  
        " Bundle 'joonty/vim-phpunitqf'

        " Generates PHP docblocks
        " https://github.com/tobyS/pdv
        " Bundle 'tobyS/pdv'

            " PDV needs that
            " https://github.com/tobyS/vmustache
            " Bundle 'tobyS/vmustache'

            " PDV needs that
            " https://github.com/SirVer/ultisnips
            " Bundle 'SirVer/ultisnips'

        " Rename the current file in the vim buffer + retain relative path
        " https://github.com/danro/rename.vim
        Bundle 'danro/rename.vim'

        " Display the indention levels with thin vertical lines
        " https://github.com/Yggdroot/indentLine
        Bundle 'Yggdroot/indentLine'

            let g:indentLine_color_term = 235

        " A Vim plugin which shows a git diff in the gutter (sign column)
        " https://github.com/airblade/vim-gitgutter
        Bundle 'airblade/vim-gitgutter'

        " A code-completion engine for Vim
        " SEE THE REPO FOR INSTALLATION INSTRUCTIONS!
        " https://github.com/Valloric/YouCompleteMe
        " Bundle 'Valloric/YouCompleteMe'

        " Ultimate auto-completion system for Vim
        " Bundle 'Shougo/neocomplcache'
    
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

            " Exclude files or directories
            set wildignore+=*/tmp/*,*.so,*.swp

        " filtering and alignment
        " https://github.com/vim-scripts/Tabular
        Bundle 'Tabular'

        " PHP syntax file updated for PHP 5.3
        " https://github.com/vim-scripts/php.vim
        " Bundle 'php.vim'

        " MatchParen for HTML tags
        " https://github.com/gregsexton/MatchTag
        Bundle 'MatchTag'

        " PHP omnicomplete with extra support
        " https://github.com/vim-scripts/phpcomplete.vim
        " Bundle 'phpcomplete.vim'

        " vimscript for gist 
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

    " molokai theme
    colorscheme molokai

    " undo leves
    set history=250
    set undolevels=250

    " TABs
    set expandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4

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
 
    " line numbers
    set nu

    " Line length marker
    " http://superuser.com/a/249856
    set colorcolumn=72

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

    " Ctrl+Space for omni and keyword completion in vim
    " http://stackoverflow.com/a/510571/922143
    inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
    \ "\<lt>C-n>" :
    \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
    \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
    \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
    imap <C-@> <C-Space>

" General commands
" To create commands:
" http://stackoverflow.com/questions/2001190/adding-a-command-to-vim

    " save as sudo
    ca w!! w !sudo tee "%"

    " remove caracteres ocultos '^M' de docs do Janelas®
    command AdjustEndOfLine execute '%s/\r\(\n\)/\1/g' 

" Maps/remaps
    
    " Sort
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
