" ====================================================
" FileName: vim-tools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" ====================================================
set noswapfile
if !isdirectory($HOME."/vimtmp")
    call mkdir($HOME."/vimtmp", "p", 0770)
endif
set directory=~/vimtmp//,.
set backupdir=~/vimtmp//,.
set backup
if !isdirectory($HOME."/vimtmp/undo-dir")
    call mkdir($HOME."/vimtmp/undo-dir", "p", 0700)
endif
set undodir=~/vimtmp/undo-dir
set undofile

let CONFIG_HOME = $PATH
let CONFIG_VIM = $PATH
let $CONFIG_HOME='$HOME/.config'
let $CONFIG_VIM='$HOME/.vimrc'

nmap <Leader>r :%s/xx/xx/gc

nnoremap <C-A> ggVG

nnoremap ß $
vnoremap ß $
nnoremap ö %
vnoremap ö %
nnoremap ü gg
vnoremap ü gg
nnoremap ä G
vnoremap ä G

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nmap <Leader>c :xx,xxs/^/#
nmap <Leader>cc :xx,xxs/^#/

nmap <Leader>b :bnext<CR>
nmap <Leader>bb :bprev<CR>

nmap <Leader>l :colorscheme default<CR>
nmap <Leader>ll :colorscheme torte<CR>
nmap <Leader>lll :colorscheme slate<CR>

" set termwinsize=20x0
map <Leader>x :belowright terminal<CR>
nnoremap <Silent> <Leader>sh :terminal<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

vnoremap < <gv
vnoremap > >gv

nnoremap <leader>cd :lcd %:p:h<CR>
autocmd BufEnter * lcd %:p:h

noremap <Leader>nf :e <C-R>=expand("%:p:h") . "/" <CR>

noremap <Leader>op :tabe <C-R>=expand("%:p:h") . "/" <CR>

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

augroup mysettings
  au FileType xslt,xml,css,html,xhtml,javascript,sh,config,c,cpp,docbook set smartindent shiftwidth=2 softtabstop=2 expandtab
  au FileType tex set wrap shiftwidth=2 softtabstop=2 expandtab
  " Confirm to PEP8
  au FileType python set tabstop=4 softtabstop=4 expandtab shiftwidth=4 cinwords=if,elif,else,for,while,try,except,finally,def,class
augroup END

autocmd BufRead,BufNewFile *.txt set syntax=conf

set gcr=a:blinkon0

map <Leader>ü :vsp<Space>$CONFIG_HOME<CR>
map <Leader>ä :vsp<Space>$CONFIG_VIM<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
