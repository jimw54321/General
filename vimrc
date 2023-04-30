" taken and edited from https://amix.dk/vim/vimrc.html and https://dougblack.io/words/a-good-vimrc.html

" Jim Woodworth - jimw54321@gmail.com
" Published under the GNU Lesser General Public License
" https://www.gnu.org/licenses/lgpl-3.0.html

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" show current position
set ruler

" highlight search results
set hlsearch

" search as characters are entered
set incsearch

" Enable syntax highlighting
syntax enable

" In this directory are .vim files for various color schemes.  Choose as you see fit.
" [jim@localhost colors]$ pwd
" /usr/share/vim/vim82/colors
" [jim@localhost colors]$ ls
" blue.vim      default.vim  desert.vim   evening.vim   koehler.vim  murphy.vim  peachpuff.vim  ron.vim    slate.vim  torte.vim
" darkblue.vim  delek.vim    elflord.vim  industry.vim  morning.vim  pablo.vim   README.txt     shine.vim  tools      zellner.vim
colorscheme desert
set background=dark

" Always show the status line
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set statusline=\ CWD:\ %r%{getcwd()}%h\ FILE:\ %f\ LINE:\ %l

" number of visual spaces per TAB
" set tabstop=8

" number of spaces in tab when editing
" set softtabstop=8

" file type specific tab settings.  https://arisweedler.medium.com/tab-settings-in-vim-1ea0863c5990
autocmd FileType html,css setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType c,cpp,h,pl,pm,pod,t,py,md,js setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType txt,mak setlocal tabstop=8 softtabstop=8 shiftwidth=8

" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" redraw only when we need to.
set lazyredraw

" highlight matching [{()}]
set showmatch

" Keep 3 lines below and above the cursor
" thinking about setting to 999 to always keep cursor in center screen
set scrolloff=999

" before the first colorscheme command will ensure that the highlight group
" gets created and is not cleared by future colorscheme commands
highlight ExtraWhitespace ctermbg=red guibg=red

" Show trailing whitespace and spaces before a tab
" Show tabs that are not at the start of a line
" Show spaces used for indenting (so you use only tabs for indenting).
" match ExtraWhitespace /\s\+$\| \+\ze\t\|[^\t]\zs\t\+\|^\t*\zs \+/
match ExtraWhitespace /\s\+$/

autocmd InsertLeave * redraw!
