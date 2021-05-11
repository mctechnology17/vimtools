" ====================================================
" FileName: vim-tools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" ====================================================
" PROBLEMAS CON ARCHIVOS TEMPORALES?
set noswapfile              " no archivos swap
if !isdirectory($HOME."/vimtmp")
    call mkdir($HOME."/vimtmp", "p", 0770)
endif
set directory=~/vimtmp//,.  " intercambio
set backupdir=~/vimtmp//,.  " respaldo
set backup
if !isdirectory($HOME."/vimtmp/undo-dir")
    call mkdir($HOME."/vimtmp/undo-dir", "p", 0700)
endif
set undodir=~/vimtmp/undo-dir
set undofile

""" NMAP SIN PLUGINS
let CONFIG_HOME = $PATH
let CONFIG_VIM = $PATH
let $CONFIG_HOME='$HOME/.config'
let $CONFIG_VIM='$HOME/.vimrc'

""" xx->palabra a reemplazar xx->palabra nueva
nmap <Leader>r :%s/xx/xx/gc

""" seleccionar todo, reemplaza a ctrl+a
nnoremap <C-A> ggVG

""" ß = final de linea
nnoremap ß $
vnoremap ß $
""" ö = final de {}
nnoremap ö %
vnoremap ö %
""" ü = comienzo d pagina
nnoremap ü gg
vnoremap ü gg
""" ä = final de pagina
nnoremap ä G
vnoremap ä G

""" guardar
nmap <Leader>w :w<CR>
""" salir
nmap <Leader>q :q<CR>

""" para comentar por bloques
nmap <Leader>c :xx,xxs/^/#
nmap <Leader>cc :xx,xxs/^#/

""" siguiente, anterior pestana
nmap <Leader>b :bnext<CR>
nmap <Leader>bb :bprev<CR>

""" THEME TEMAS
nmap <Leader>l :colorscheme default<CR>
nmap <Leader>ll :colorscheme torte<CR>
nmap <Leader>lll :colorscheme slate<CR>

""" abrir archivos | xdg-open para linux
"map <Leader>op :!open -a Adobe\ Acrobat\ Reader\ DC <C-R> && disown<CR><C-R>

""" tamaño por defecto del terminal
" set termwinsize=20x0
map <Leader>x :belowright terminal<CR>
nnoremap <Silent> <Leader>sh :terminal<CR>

""" mover bloques de codigo en Visual Mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

""" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

""" establecer directorio de trabajo
nnoremap <leader>cd :lcd %:p:h<CR>
" cambiar directorio a el del documento actual automatico
autocmd BufEnter * lcd %:p:h

""" abre un comando de edición con la ruta
" del archivo editado actualmente completa
noremap <Leader>nf :e <C-R>=expand("%:p:h") . "/" <CR>

""" abre un comando de edición de pestañas
" con la ruta del archivo editado actualmente
noremap <Leader>op :tabe <C-R>=expand("%:p:h") . "/" <CR>

""" recordar posicion del cursor
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

""" sangria automatica Einrucken
augroup mysettings
  au FileType xslt,xml,css,html,xhtml,javascript,sh,config,c,cpp,docbook set smartindent shiftwidth=2 softtabstop=2 expandtab
  au FileType tex set wrap shiftwidth=2 softtabstop=2 expandtab
  " Confirm to PEP8
  au FileType python set tabstop=4 softtabstop=4 expandtab shiftwidth=4 cinwords=if,elif,else,for,while,try,except,finally,def,class
augroup END

""" sintaxis en archivos .txt
autocmd BufRead,BufNewFile *.txt set syntax=conf

""" Disable the blinking cursor.
set gcr=a:blinkon0

""" Bibliotecas y rutas
map <Leader>ü :vsp<Space>$CONFIG_HOME<CR>
map <Leader>ä :vsp<Space>$CONFIG_VIM<CR>

""" split navegacion
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""" autoeliminar espacios al final de cada linea
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
