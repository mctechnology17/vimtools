
[![MC Technology](doc/mctechnology_extendido.GIF)](https://www.youtube.com/channel/UC_mYh5PYPHBJ5YYUj8AIkcw)
<div align="center">
  <br> <h1>⚙️  vim-tools 🛠 </h1>
</div>

<h4 align="center">
  <a> Compatibility 👉 </a>
  <a href="https://www.vim.org/download.php" target="_blank"><code>Vim</code></a>
  <a href="https://github.com/macvim-dev/macvim" target="_blank"><code>MacVim</code></a>
  <a href="https://github.com/neovim/neovim" target="_blank"><code>NVim</code></a>
</h4>

<div align="right">
  <sub>Author:
  <a href="https://twitter.com/mctechnology17">MC Technology</a>
</div>
<br>

- [Intro](#Intro)
- [Fotos](#Fotos)
- [Installation](#Installation)
- [Description](#Description)
- [LICENSE](#LICENSE)

----

## Intro
If you are tired of temporary files,
of no auto predictor, of the small letters in GVim,
the annoying error in Vim that you did not save the changes correctly,
of not remembering how you do to replace or change words,
that the keys with "a" or "u on the German keyboard do not have extra functionality,
always write: w: q etc? then this Plug is for you.
With this Plug you can forget about temporary files
created for VIM, Vi, GVIm, MacVim and the all-powerful NVIM editor.

## Installation

### Using [Vundle](https://github.com/gmarik/vundle):

Just add this line to your `~/.vimrc`:

```vim
Plugin 'mctechnology17/vim-tools'
```

And run `:PluginInstall` inside Vim.

### Using [pathogen.vim](https://github.com/tpope/vim-pathogen):

Copy and paste in your shell:

```bash
cd ~/.vim/bundle
git clone https://github.com/mctechnology17/vim-tools
```

### Using [vpm](https://github.com/KevinSjoberg/vpm):

Run this command in your shell:

```bash
vpm insert mctechnology17/vim-tools
```

### Using [Plug](https://github.com/junegunn/vim-plug):

Just add this line to your `~/.vimrc` inside plug call:

```vim
Plug 'mctechnology17/vim-tools'
```

And run `:PlugInstall` inside Vim or `vim +PlugInstall +qa` from shell.

<img src="https://github.com/mctechnology17/vim-tools/blob/main/doc/PlugInstall.gif" height="450">

## Description
```vim
" access your .vimrc or init.vim immediately with
" F1 keys for .vimrc or _vimrc if you are on Windows
F2 para init.vim let CONFIG_VIM = $PATH
let CONFIG_NVIM = $PATH

if has('win32')&&!has('win64')
  let $CONFIG_VIM='$HOME/_vimrc'
  let $CONFIG_NVIM='$HOME/AppData/Local/nvim/init.vim'
else
  let $CONFIG_VIM='$HOME/.vimrc'
  let $CONFIG_NVIM='$HOME/.config/nvim/init.vim'
endif
map <F1> :vsp<Space>$CONFIG_VIM<CR>
map <F2> :vsp<Space>$CONFIG_NVIM<CR>

"was ready dictionary this is combined with TAB = tab for word suggestions
if isdirectory('/usr/share/dict/words')
    set dictionary+=/usr/share/dict/words
elseif isdirectory('/usr/local/opt/fzf')
    set rtp+=/usr/local/opt/fzf
endif

if has('win32')&&!has('win64')
    set guifont=Consolas:h12
endif

"a default folder is created in your $ HOME
"with the name of nvimtemp or vimtemp automatically once installed
"correctly on your computer
"What is the advantage of this?
"Well, you will no longer have those annoying files
"in your folders, but you have them centralized in one place
"in case you want to restore them or in case you want
"undo some change. Imagine that you are writing your code,
"you deleted it by accident with the command rm -rf from
"the terminal and you want to recover those files?  "Well,
"you simply go to the path $ HOME / nvimtmp or $ HOME /
"vimtmp depending on your editor and restore the file!
"Plus you don't have to worry about sharing something you don't want!
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

"replacing was never so easy, just in the first xx
"You write the words to replace and in the second xx with what you are going to replace.
" example:
":% s / std :: // gc
"here std :: will be replaced by nothing, to delete so to speak in your code,
"The gc is for me to ask you, if you want to replace everything without prompting you,
"just remove the letter c and everything will be replaced automatically
nmap <Leader>r :%s/xx/xx/gc

"select all the text with Control + a
nnoremap <C-A> ggVG

"Useful map for German keyboards, Zuisos etc. In normal and visual modes.
"end of line = ß
"end of brackets = $
"first line of code = ü
"last line of code = ä
"NOTE: in VISUAL mode it will help you to select in their respective order.
nnoremap ß $
vnoremap ß $
nnoremap ö %
vnoremap ö %
nnoremap ü gg
vnoremap ü gg
nnoremap ä G
vnoremap ä G
"next word suggestion
inoremap <TAB> <C-N>

"save and close the script in a comfortable way
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

"next Buffer or tabs or previous
nmap <Leader>b :bnext<CR>
nmap <Leader>bb :bprev<CR>

"invoke the terminal that easy
map <Leader>x :belowright terminal<CR>
nnoremap <Silent> <Leader>sh :terminal<CR>

"move code blocks in an easy and fast way
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"to move with indentation in an easy way
vnoremap < <gv
vnoremap > >gv

"change the path of the $ PATH in an easy way
nnoremap <leader>cd :lcd %:p:h<CR>

"create a new file in the same address as your $ PATH
noremap <Leader>nf :e <C-R>=expand("%:p:h") . "/" <CR>
"invoke a new file at the same address as your $ PATH
noremap <Leader>op :tabe <C-R>=expand("%:p:h") . "/" <CR>

"removes annoying whitespace automatically
"automatic indentation for all languages
"position of the automatic pointer and by suppose $ PATH automatic to the
"current directory, if the Buffer does not recognize it, you can change it by LEADER + cd to
"as above
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

"disable pointer blinking
set gcr=a:blinkon0
"movement between open windows with Control + h/j/k/l or SHIFT + h/j/k/l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <S-LEFT> <C-w>h
map <S-DOWN> <C-w>j
map <S-UP> <C-w>k
map <S-RIGHT> <C-w>l

"enlarge windows with - or + in normal mode
nnoremap + 3<C-w>>
nnoremap - 3<C-w><

"Do you use MacOS? You will love this,
"now you can copy and paste with COMMAND + v / c in VIM
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

"run your code in Python without leaving your code
"NOTE: it only works if you don't have to give it any arguments
if has( 'python3' )
  map <Leader>- :belowright term python %<CR>
  map <Leader>-- :tab belowright term python %<CR>
endif

"compile your code in c with gcc or clang
"NOTE: it only works if you don't have to give it any arguments
if has('gcc')||has('clang')
  map <Leader>+ :!gcc % -g -v -m64 -Wall -Werror -Wunused-parameter -Wunused-variable -O3 -pedantic -o %<.x<CR><CR>
  nnoremap <silent> <TAB>+ :tab term ./%<.x<CR><CR>
  nnoremap <silent> <TAB>l :!rm -r %<.x.dSYM __pycache__ %<.[ox]<CR><CR>
endif

"compile your code in cpp with g ++ or clang ++
"<TAB> + executes compiled code
"<TAB> l clean compiled code and temporary files
"NOTE: it only works if you don't have to give it any arguments
if has('g++')||has('clang++')
  map <Leader>++ :!g++ % -g -v -m64 -Wall -Werror -Wunused-parameter -Wunused-variable -O3 -pedantic -std=c++11 -o %<.x<CR><CR>
  nnoremap <silent> <TAB>+ :tab term ./%<.x<CR><CR>
  nnoremap <silent> <TAB>l :!rm -r %<.x.dSYM __pycache__ %<.[ox]<CR><CR>
endif

"compile your code in LaTeX with pandoc and open the result immediately
if has('macunix')
  nnoremap <silent> <TAB>p :!pandoc --verbose % -o %<.pdf && open %<.pdf<CR><CR>
  nnoremap <silent> <TAB>l :!pandoc --verbose % -o %<.pdf && open %<.pdf<CR><CR>
elseif has('unix')
  nnoremap <silent> <TAB>p :!pandoc --verbose % -o %<.pdf && xdg-open %<.pdf<CR><CR>
  nnoremap <silent> <TAB>l :!pandoc --verbose % -o %<.pdf && xdg-open %<.pdf<CR><CR>
endif
```

## Fotos
![Compatibility](doc/1_Plugs.png)
![Terminal](doc/2_Terminal.png)

## LICENSE
