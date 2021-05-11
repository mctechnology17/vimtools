" ====================================================
" FileName: vim-tools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" ====================================================
"colorscheme default        " tema preterminado default
"set background=light
set background=dark
"set textwidth=80           " delimitar texto
set number                  " numeros
set numberwidth=1           " grosor de numeros
set mouse=a                 " usar raton
set clipboard=unnamed       " copiar a portapapeles
set cursorline              " mostrar linea cursor
set cursorcolumn            " mostrar columna cursor
syntax on                   " Wikivim prerequisitos
filetype plugin on          " Wikivim prerequisitos
set nocompatible            " Wikivim prerequisitos
set showcmd                 " ver comandos
set ruler                   " mostrar siempre regla
set showmatch               " ver match
set laststatus=2            " ultimo estatus
set encoding=utf-8          " codificacion compatibilidad
set fileencoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
set incsearch               " aumenta matches en busqueda
set ignorecase              " busqueda mayusculas y minusculas
" set hlsearch		            " resaltar matches siempre
set nohlsearch		          " quitar resaltado
set undofile                " reahcer despues de cerrado
set noemoji                 " marcar emojis
set dictionary+=/usr/share/dict/words | " diccionario
"set rtp+=/usr/local/opt/fzf          | " si usas fzf
" set guifont=Consolas:h12  " tamano de letra
set t_Co=256
" PROBLEMAS CON ARCHIVOS TEMPORALES?
" solucion 1
" set nobackup              " eliminar los backup
" set nowritebackup
set noswapfile              " no archivos swap
" solucion 2
" doble barra para evitar conflictos con archivos del mismo nombre
" ,. ocupar directorio actual si el primero no existe
" crear en home la carpeta vimtmp
if !isdirectory($HOME."/vimtmp")
    call mkdir($HOME."/vimtmp", "p", 0770)
endif
set directory=~/vimtmp//,.  " intercambio
set backupdir=~/vimtmp//,.  " respaldo
set backup
" usa este comando para eliminar archivos viejos
" de mas de 90 dias
" find ~/nvimtmp/undo-dir -type f -mtime +90 -delete
if !isdirectory($HOME."/vimtmp/undo-dir")
    call mkdir($HOME."/vimtmp/undo-dir", "p", 0700)
endif
set undodir=~/vimtmp/undo-dir
set undofile

""" NMAP SIN PLUGINS

let mapleader=" "  " mapa tecla ESPACIO
let CONFIG_HOME = $PATH
let CONFIG_VIM = $PATH
let $CONFIG_HOME='$HOME/.config'
let $CONFIG_VIM='$HOME/.vimrc'

""" espacio+d reemplazar
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
