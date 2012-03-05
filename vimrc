set nocompatible
syntax enable
set encoding=utf-8
set clipboard=unnamed


call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on       " load file type plugins + indentation
set showcmd                     " display incomplete commands
set number				"show line numbers
set cursorline
set history=100			"keep 100 lines of history
set ruler				" show the cursor position

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4 softtabstop=4      " a tab is four spaces (change this to your linking)
set noexpandtab                   " use spaces, not tabs (remove this if you mostly use tabs)
set backspace=indent,eol,start  " backspace through everything in insert mode
set ai				"auto indenting"

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" colors
set t_Co=256
set background=dark
:colorscheme solarized 
set modelines=0		" CVE-2007-243

"remap escape to jj
:imap jj <Esc>
:imap <S-Space> <Esc>

" list invisible characters
set list
set listchars=tab:\|\ ,eol:¬

" settings for buffers
set hidden
set confirm

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

set pastetoggle=<F2>
