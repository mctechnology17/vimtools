" ====================================================
" FileName: vimtools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" Date: 26.05.2021 15:00
" ====================================================

" Copyright (c) 2021 MC Technology
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the 'Software'), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

scriptencoding utf-8

fun! s:MakeDir()
    if !isdirectory($HOME."/vim-tools_tmp")
        call mkdir($HOME."/vim-tools_tmp", "p", 0770)
        echomsg 'vim-tools: $HOME/vim-tools_tmp folder was created'
        sleep 1
    endif
    if !isdirectory($HOME."/vim-tools_tmp/nvim_tmp")
        call mkdir($HOME."/vim-tools_tmp/nvim_tmp", "p", 0770)
    endif
    if !isdirectory($HOME."/vim-tools_tmp/nvim_tmp/undo_dir")
        call mkdir($HOME."/vim-tools_tmp/nvim_tmp/undo_dir", "p", 0700)
    endif
    if !isdirectory($HOME."/vim-tools_tmp/nvim_tmp/nvim_viewdir")
        call mkdir($HOME."/vim-tools_tmp/nvim_tmp/nvim_viewdir", "p", 0770)
    endif
    echomsg 'vim-tools: undo_dir, nvim_tmp and nvim_viewdir folders were created'
    sleep 1

    if !isdirectory($HOME."/vim-tools_tmp/vim_tmp")
        call mkdir($HOME."/vim-tools_tmp/vim_tmp", "p", 0770)
    endif
    if !isdirectory($HOME."/vim-tools_tmp/vim_tmp/undo_dir")
        call mkdir($HOME."/vim-tools_tmp/vim_tmp/undo_dir", "p", 0700)
    endif
    if !isdirectory($HOME."/vim-tools_tmp/vim_tmp/vim_viewdir")
        call mkdir($HOME."/vim-tools_tmp/vim_tmp/vim_viewdir", "p", 0770)
    endif
    echomsg 'vim-tools: undo_dir, vim_tmp and vim_viewdir folders were created'
    sleep 1
endfun

function! vimtools#execute()
    let CONFIG_NVIM = $PATH
    let CONFIG_VIM = $PATH
    if has('win32')&&!has('win64')
        if filereadable(expand('$HOME/_vimrc'))
            let $CONFIG_VIM='$HOME/_vimrc'
        endif
        if filereadable(expand('$HOME/AppData/Local/nvim/init.vim'))
            let $CONFIG_NVIM='$HOME/AppData/Local/nvim/init.vim'
        endif
        if has('nvim')
            map <F2> :vsp<Space>$CONFIG_NVIM<CR>
        else
            map <F2> :vsp<Space>$CONFIG_VIM<CR>
        endif
    else
        if filereadable(expand('$HOME/.vimrc'))
            let $CONFIG_VIM='$HOME/.vimrc'
        endif
        if filereadable(expand('$HOME/.config/nvim/init.vim'))
            let $CONFIG_NVIM='$HOME/.config/nvim/init.vim'
        endif
        if has('nvim')
            map <F2> :vsp<Space>$CONFIG_NVIM<CR>
        else
            map <F2> :vsp<Space>$CONFIG_VIM<CR>
        endif
    endif

    if isdirectory('/usr/share/dict/words')
        set dictionary+=/usr/share/dict/words
    endif

    if has('win32')&&!has('win64')
        set guifont=Consolas:h12
    endif

    if !isdirectory($HOME."/vim-tools_tmp")
        call s:MakeDir()
        echohl MoreMsg
        echon 'vim-tools: Directories created with success, '
        echon 'this message only appears once, '
        echon 'enjoy this plug made with love!'
        echohl None
        sleep 2
    else
        if has('nvim')
            set viewdir=~/vim-tools_tmp/nvim_tmp/nvim_viewdir   " backup for folding
            set directory=~/vim-tools_tmp/nvim_tmp//,.   " backup for swap
            set backupdir=~/vim-tools_tmp/nvim_tmp//,.   " respaldos
            set undodir=~/vim-tools_tmp/nvim_tmp/undo_dir  " deshacer
            autocmd BufWinLeave *.* mkview
            autocmd BufWinEnter *.* silent! loadview
        else
            set viewdir=~/vim-tools_tmp/vim_tmp/vim_viewdir   " backup for folding
            set directory=~/vim-tools_tmp/vim_tmp//,.   " backup for swap
            set backupdir=~/vim-tools_tmp/vim_tmp//,.   " respaldos
            set undodir=~/vim-tools_tmp/vim_tmp/undo_dir  " deshacer
            autocmd BufWinLeave *.* mkview
            autocmd BufWinEnter *.* silent! loadview
        endif
        set backup                  " set nobackup nowritebackup
        set undofile                " set noundofile
        set noswapfile              " set swapfile
    endif

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
    vnoremap J :m '>+1<CR>gv=gv
    vnoremap K :m '<-2<CR>gv=gv
    vnoremap < <gv
    vnoremap > >gv
    nnoremap + 3<C-w>>
    nnoremap - 3<C-w><

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

    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
    function MoveWithArrows()
      map <S-LEFT> <C-w>h
      map <S-DOWN> <C-w>j
      map <S-UP> <C-w>k
      map <S-RIGHT> <C-w>l
    endfunction

    if has('nvim') || has("gui_macvim")
          \ || has("gui_gtk2") || has("gui_gtk3")
          \ || has("gui_win32")
      call MoveWithArrows()
    endif

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
endfunction

fun! s:CleanUndoDir()
    if isdirectory($HOME."/vim-tools_tmp/nvim_tmp/undo_dir")||
                \ isdirectory($HOME."/vim-tools_tmp/vim_tmp/undo_dir")
        autocmd BufWritePost !find $HOME/vim-tools_tmp/nvim_tmp/undo_dir -type f -mtime +90 -delete
        autocmd BufWritePost !find $HOME/vim-tools_tmp/vim_tmp/undo_dir -type f -mtime +90 -delete
        echomsg 'vim-tools: UNDO_DIR was cleaned with success'
    endif
endfun

command! -nargs=0 VimToolsCleanUndoDir call s:CleanUndoDir()
command! -nargs=0 VimToolsMakeDir call s:MakeDir()
