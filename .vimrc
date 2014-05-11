" .vimrc examples: https://github.com/gmarik/vundle/wiki/Examples
" General configs 

    " UTF-8 encoding
    set encoding=utf-8

    " Change <Leader>
    let mapleader = ","

    " vim whit 256 colors
    set t_Co=256
    syntax enable
    
    " Allows hidden buffers
    set hidden

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
    "set cursorline

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

    " Vertical splits open to the right
    set splitright

    " Store swap files in fixed location, not current directory
    " http://stackoverflow.com/a/4331812/922143
    set dir=~/.vim/swap//,/tmp//,.

    " Autocomplete
    " http://blog.millermedeiros.com/vim-css-complete/
        set infercase
        set completeopt=longest,menuone
        set omnifunc=syntaxcomplete#Complete
        set completefunc=syntaxcomplete#Complete
        set complete=.,w,b,U,t,i,d

        augroup omni_complete
            " clear commands before resetting
            autocmd!

            " Enable omnicomplete for supported filetypes
            autocmd FileType css,scss,sass setlocal omnifunc=csscomplete#CompleteCSS
            autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
            autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
            autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
            autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        augroup END

        " Remap code completion to Ctrl+Space
        inoremap <Nul> <C-x><C-o>

    " .twig files with .html syntax highlight
    au BufRead,BufNewFile *.twig setfiletype html










    " General commands
    " To create commands: http://stackoverflow.com/questions/2001190/adding-a-command-to-vim

        " save as sudo
        ca w!! w !sudo tee "%"

        " remove hidden characters '^M' from Windows® docs
        command AdjustEndOfLine execute '%s/\r\(\n\)/\1/g' 

        " Tabs to spaces
        command Tabs2Spaces execute ':1,$s/\t/  /g'

        " 2 spaces to 4 spaces
        command TwoSpaces2FourSpaces execute ':%s/^\s*/&&/g'

    " Maps/remaps
        
        " Fix the backspace key
        se bs=2

        " Sort selected lines
        vnoremap <F9> :sort<CR>

        " Easier moving of code blocks
        vnoremap < <gv
        vnoremap > >gv

        " Control-] pop open a window and show the tag there
        nnoremap <C-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>

    " Abbreviations

        cab W! w!
        cab Q! q!
        cab Wq wq
        cab Wa wa
        cab wQ wq
        cab WQ wq
        cab W w
        cab Q q

" Vundle

    set nocompatible    " be iMproved
    filetype off        " require

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " required! 
    Plugin 'gmarik/Vundle.vim'

    " Plugins from GitHub repos
        
        " Themes
        Plugin 'tomasr/molokai'

        " Tag file manager for Vim
        " Need to install Exuberant Ctags (sudo apt-get install exuberant-ctags)
        "Plugin 'joonty/vim-taggatron'

            "let g:tagcommands = {
                "\"php" : { "tagfile" : ".php.tags", "args" : "-R" },
                "\"javascript" : { "tagfile" : ".js.tags", "args" : "-R --exclude=node_modules" }
            "\}

        " quoting/parenthesizing made simple
        Plugin 'tpope/vim-surround'

        " Emmet for vim
        Plugin 'mattn/emmet-vim'

        " Emmet LiveStyle for Vim
        " (in apt-get based OSs: sudo apt-get install golang-go)
        "Plugin 'mattn/livestyle-vim'

        " Vim-CtrlSpace
        " Vim Workspace Controller
        Plugin 'szw/vim-ctrlspace'

            let g:airline_exclude_preview = 1
            let g:ctrlspace_ignored_files = '\v(tmp|temp|node_modules|components|wp-admin|wp-includes)[\/]'

            hi CtrlSpaceSelected term=reverse ctermfg=187  ctermbg=23  cterm=bold
            hi CtrlSpaceNormal   term=NONE    ctermfg=244  ctermbg=232 cterm=NONE
            hi CtrlSpaceFound    ctermfg=220  ctermbg=NONE cterm=bold

        " vim-maximizer
        " Maximizes and restores the current window
        Plugin 'szw/vim-maximizer'

            let g:maximizer_default_mapping_key = '<F4>'

        " Better file browser
        Plugin 'scrooloose/nerdtree'
        
            " NERDTree toggle
            map <silent><F3> :NERDTreeToggle<CR>

            " Ignore files on NERDTree
            let NERDTreeIgnore = ['\.git[[dir]]', 'node_modules[[dir]]', '\.pyc$', '\.pyo$', '\.tags$'] 
            
            " NERDTree and tabs together in Vim, painlessly
            Plugin 'jistr/vim-nerdtree-tabs'

                let NERDTreeShowHidden=1
                let g:nerdtree_tabs_focus_on_files=1
  
        " Vim Plugin for intensely orgasmic commenting 
        Plugin 'scrooloose/nerdcommenter'

            " Overwrite SCSS comment stlye to '// '
            let g:NERDCustomDelimiters = {
                \ 'scss': { 'left': '// ', 'right': '' }
            \ }

        " True Sublime Text style multiple selections for Vim 
        Plugin 'terryma/vim-multiple-cursors'
        
        " Lean & mean statusline for vim that's light as air
        Plugin 'bling/vim-airline'

            let g:airline_powerline_fonts = 1

            let g:airline_symbols        = {}
            let g:airline_symbols.branch = ''
            
            let g:airline_section_b                       = '%{fugitive#head()}'
            let g:airline#extensions#branch#empty_message = ''

        " A Git wrapper so awesome
        Plugin 'tpope/vim-fugitive'

            " If Fugitive loaded, show branch in statusline
            set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

            " Auto-clean fugitive buffers
            autocmd BufReadPost fugitive://* set bufhidden=delete

        " Pairs of handy bracket mappings
        Plugin 'tpope/vim-unimpaired'
        
        " UltiSnips
        " An implementation of TextMates Snippets for the Vim Text Editor
        Plugin 'SirVer/ultisnips'

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

            "filetype Plugin indent on
            let g:EclimCompletionMethod      = 'omnifunc'
            let g:EclimPhpSearchSingleResult = 'tabnew'
            let g:EclimPhpValidate           = 0

        Plugin 'StanAngeloff/php.vim'

        " phpcomplete.vim
        " Improved PHP omnicompletion
        " PHP syntax file (5.3, 5.4 & 5.5 support)
        Plugin 'shawncplus/phpcomplete.vim'

            let g:phpcomplete_parse_docblock_comments = 1

        " vim-php-namespace
        " Types 'use' statements for you
        Plugin 'arnaud-lb/vim-php-namespace'

            " hitting <leader>u  will import the class under the cursor
            inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
            noremap <Leader>u :call PhpInsertUse()<CR>

            " <leader>e  will expand the class name to a fully qualified name
            inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
            noremap <Leader>e :call PhpExpandClass()<CR>

        " PHP QA
        " Using this while Syntastic not working
        " https://github.com/scrooloose/syntastic/issues/780
        Plugin 'joonty/vim-phpqa'

            let g:phpqa_open_loc = 0 
            command! PhpqaErrorsWindow lop

            let g:phpqa_codesniffer_args     = "--standard=PSR2 --ignore=*/node_modules/*"
            "let g:phpqa_messdetector_ruleset = "cleancode,codesize,design,unusedcode"

        " Auto Pairs
        " Insert or delete brackets, parens, quotes in pair
        Plugin 'jiangmiao/auto-pairs'

        " Vim runtime files for Haml, Sass, and SCSS
        Plugin 'tpope/vim-haml'

        " vim syntax for LESS
        "Plugin 'groenewege/vim-less'

        " EditorConfig Plugin for Vim (http://editorconfig.org)
        Plugin 'editorconfig/editorconfig-vim'

        " Visually displaying indent levels in code
        Plugin 'nathanaelkane/vim-indent-guides'

            let g:indent_guides_enable_on_vim_startup = 1
            let g:indent_guides_guide_size = 1
            let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

            " http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
            let g:indent_guides_auto_colors = 0
            autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=234
            autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

        " A Vim Plugin which shows a git diff in the gutter (sign column)
        Plugin 'airblade/vim-gitgutter'

    " Plugins from vim-scripts repos

        " General utility functions
        " https://github.com/vim-scripts/genutils
        Plugin 'genutils' 

        " Search results counter
        " https://github.com/vim-scripts/IndexedSearch
        Plugin 'IndexedSearch'

        " filtering and alignment
        " https://github.com/vim-scripts/Tabular
        Plugin 'Tabular'

        " Time tracking for programmers
        Plugin 'wakatime/vim-wakatime'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
