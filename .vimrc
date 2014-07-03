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

        " Paste multiple times
        " http://stackoverflow.com/questions/7163947/vim-paste-multiple-times
        xnoremap p pgvy

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
source ~/.vim/plugins.vim
