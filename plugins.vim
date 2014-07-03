set nocompatible    " be iMproved
filetype off        " require

set rtp+=~/.vim/bundle/vundle/
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
        let g:ctrlspace_ignored_files = '\v(tmp|temp|cache|node_modules|components|wp-admin|wp-includes)[\/]'

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
        let NERDTreeIgnore = [
            \'\.git[[dir]]',
            \'\.sass-cache[[dir]]',
            \'node_modules[[dir]]',
            \'\.pyc$',
            \'\.pyo$',
            \'\.tags$'
        \] 
        
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
        "let g:EclimCompletionMethod      = 'omnifunc'
        "let g:EclimPhpSearchSingleResult = 'tabnew'
        "let g:EclimPhpValidate           = 0

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
    "Plugin 'joonty/vim-phpqa'

        "let g:phpqa_open_loc = 0 
        "command! PhpqaErrorsWindow lop

        "let g:phpqa_codesniffer_args     = "--standard=PSR2 --ignore=*/node_modules/*"
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
