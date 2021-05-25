" ====================================================
" FileName: vim-tools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" ====================================================
let CONFIG_VIM = $PATH
let $CONFIG_VIM='$HOME/.vimrc'
map <Leader>ä :vsp<Space>$CONFIG_VIM<CR>

if isdirectory('/usr/share/dict/words')
    set dictionary+=/usr/share/dict/words
elseif isdirectory('/usr/local/opt/fzf')
    set rtp+=/usr/local/opt/fzf
endif

if has('win32')&&!has('win64')
    set guifont=Consolas:h12
endif

if has('nvim')
    if !isdirectory($HOME."/nvimtmp")
        call mkdir($HOME."/nvimtmp", "p", 0770)
    endif
    if !isdirectory($HOME."/nvimtmp/undo-dir")
        call mkdir($HOME."/nvimtmp/undo-dir", "p", 0700)
    endif
    set directory=~/nvimtmp//,.
    set backupdir=~/nvimtmp//,.
    set undodir=~/nvimtmp/undo-dir
else
    if !isdirectory($HOME."/vimtmp")
        call mkdir($HOME."/vimtmp", "p", 0770)
    endif
    if !isdirectory($HOME."/vimtmp/undo-dir")
        call mkdir($HOME."/vimtmp/undo-dir", "p", 0700)
    endif
    set directory=~/vimtmp//,.
    set backupdir=~/vimtmp//,.
    set undodir=~/vimtmp/undo-dir
endif
set backup
set undofile
set noswapfile

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
inoremap <TAB> <C-N>
inoremap ß <C-N>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nmap <Leader>b :bnext<CR>
nmap <Leader>bb :bprev<CR>

if !has('nvim')
	map <Leader>x :belowright terminal<CR>
	nnoremap <Silent> <Leader>sh :terminal<CR>
endif

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

vnoremap < <gv
vnoremap > >gv

nnoremap <leader>cd :lcd %:p:h<CR>
noremap <Leader>nf :e <C-R>=expand("%:p:h") . "/" <CR>
noremap <Leader>op :tabe <C-R>=expand("%:p:h") . "/" <CR>

augroup mysettings
  au FileType xslt,xml,css,html,xhtml,javascript,sh,config,c,cpp,docbook set smartindent shiftwidth=2 softtabstop=2 expandtab
  au FileType tex set wrap shiftwidth=2 softtabstop=2 expandtab
  au FileType python set tabstop=4 softtabstop=4 expandtab shiftwidth=4 cinwords=if,elif,else,for,while,try,except,finally,def,class
  au BufRead,BufNewFile *.txt set syntax=conf
  au BufWritePre * %s/\s\+$//e
  au BufWritePre * %s/\n\+\%$//e
  au BufWritePre *.[ch] %s/\%$/\r/e
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
  au BufEnter * lcd %:p:h
augroup END

set gcr=a:blinkon0

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <S-LEFT> <C-w>h
map <S-DOWN> <C-w>j
map <S-UP> <C-w>k
map <S-RIGHT> <C-w>l

nnoremap + 3<C-w>>
nnoremap - 3<C-w><


if has('macunix')
  vmap <D-c> :!pbcopy<CR>
  nmap <D-c> :!pbcopy<CR>
  vmap <D-c> :w !pbcopy<CR><CR>
  vmap <D-c> :w !pbcopy<CR><CR>
  vmap <D-v> :!pbpaste<CR>
  nmap <D-v> :!pbpaste<CR>
  vmap <D-v> :w !pbpaste<CR><CR>
  vmap <D-v> :w !pbpaste<CR><CR>
endif

"if !has('nvim')
"endif
map <Leader>- :belowright term python %<CR>
map <Leader>-- :tab belowright term python %<CR>
map <Leader>+ :!gcc % -g -v -m64 -Wall -Werror -Wunused-parameter -Wunused-variable -O3 -pedantic -o %<.x<CR><CR>
map <Leader>++ :!g++ % -g -v -m64 -Wall -Werror -Wunused-parameter -Wunused-variable -O3 -pedantic -std=c++11 -o %<.x<CR><CR>
nnoremap <silent> <TAB>p :!pandoc --verbose % -o %<.pdf && open %<.pdf<CR><CR>
nnoremap <silent> <TAB>l :!pandoc --verbose % -o %<.pdf && open %<.pdf<CR><CR>
nnoremap <silent> <TAB>+ :tab term ./%<.x<CR><CR>
nnoremap <silent> <TAB>l :!rm -r %<.x.dSYM __pycache__ %<.[ox]<CR><CR>
