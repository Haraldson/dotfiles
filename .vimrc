set so=7
set wildmenu "Turn on WiLd menu
set ruler "Always show current position
set cmdheight=2 "The commandbar height
set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase "Ignore case when searching
set smartcase
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 
set magic "Set magic on, for regular expressions
set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink
" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types
set nobackup
set nowb
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

syntax on

autocmd BufRead,BufNewFile *.ini,*.ini.append.php set syntax=dosini

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
