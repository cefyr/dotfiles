" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" My default tab stuff
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab 
set softtabstop=4

" If computer has wildmenu:
" Make tab completion work like it does in bash
" Also, ignore filetypes which are irrelevant to vim 
if has("wildmenu")
  set wildmenu
  set wildmode=longest,list
  set wildignore+=*.a,*.o
  set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
  set wildignore+=.DS_Store,.git,.hg,.svn
  set wildignore+=*~,*.swp,*.tmp
endif

" Case-insensitive tab completions (not underscores)
if exists("&wildignorecase")
  set wildignorecase
endif

" Taglist plugin
" note also keymappings
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 30
let Tlist_Sort_Type = "name"
let Tlist_Exit_OnlyWindow = 1
map <F4> :TlistToggle<cr>
nnoremap <F3> <C-W>w

" Toggle auto-indenting for code paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Key mappings
" NOTE: Search for other instances of 'map'
map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F9> :tabe
