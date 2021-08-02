" ====================================================
" FileName: vimtools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" Date: 26.05.2021 15:00
" ====================================================
scriptencoding utf-8

fun! s:MakeDir()
    if !isdirectory($HOME."/vimtools_tmp")
        call mkdir($HOME."/vimtools_tmp", "p", 0770)
        echomsg 'vimtools: $HOME/vimtools_tmp folder was created'
        sleep 1
    endif
    if !isdirectory($HOME."/vimtools_tmp/nvim_tmp")
        call mkdir($HOME."/vimtools_tmp/nvim_tmp", "p", 0770)
        echomsg 'vimtools: nvim_tmp was created'
    endif
    if !isdirectory($HOME."/vimtools_tmp/nvim_tmp/undo_dir")
        call mkdir($HOME."/vimtools_tmp/nvim_tmp/undo_dir", "p", 0700)
        echomsg 'vimtools: undo_dir was created'
    endif
    if !isdirectory($HOME."/vimtools_tmp/nvim_tmp/nvim_viewdir")
        call mkdir($HOME."/vimtools_tmp/nvim_tmp/nvim_viewdir", "p", 0770)
        echomsg 'vimtools: nvim_viewdir was created'
    endif

    if !isdirectory($HOME."/vimtools_tmp/vim_tmp")
        call mkdir($HOME."/vimtools_tmp/vim_tmp", "p", 0770)
        echomsg 'vimtools: vim_tmp was created'
    endif
    if !isdirectory($HOME."/vimtools_tmp/vim_tmp/undo_dir")
        call mkdir($HOME."/vimtools_tmp/vim_tmp/undo_dir", "p", 0700)
        echomsg 'vimtools: undo_dir was created'
    endif
    if !isdirectory($HOME."/vimtools_tmp/vim_tmp/vim_viewdir")
        call mkdir($HOME."/vimtools_tmp/vim_tmp/vim_viewdir", "p", 0770)
        echomsg 'vimtools: vim_viewdir was created'
    endif
    echomsg 'vimtools: Directories created with success'
endfun

fun! s:SetBackUpDir()
    if has('nvim')
        set viewdir=~/vimtools_tmp/nvim_tmp/nvim_viewdir   " backup for folding
        set directory=~/vimtools_tmp/nvim_tmp//,.   " backup for swap
        set backupdir=~/vimtools_tmp/nvim_tmp//,.   " respaldos
        set undodir=~/vimtools_tmp/nvim_tmp/undo_dir  " deshacer
        autocmd BufWinLeave *.* mkview
        autocmd BufWinEnter *.* silent! loadview
    else
        set viewdir=~/vimtools_tmp/vim_tmp/vim_viewdir   " backup for folding
        set directory=~/vimtools_tmp/vim_tmp//,.   " backup for swap
        set backupdir=~/vimtools_tmp/vim_tmp//,.   " respaldos
        set undodir=~/vimtools_tmp/vim_tmp/undo_dir  " deshacer
        autocmd BufWinLeave *.* mkview
        autocmd BufWinEnter *.* silent! loadview
    endif
    set backup                  " set nobackup nowritebackup
    set undofile                " set noundofile
    set noswapfile              " set swapfile
endfun

fun! s:SetVSP()
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
endfun

function! vimtools#execute()
    if g:vimtools_setvsp_loaded
        call s:SetVSP()
    endif

    if !isdirectory($HOME."/vimtools_tmp")
        call s:MakeDir()
        echomsg 'vimtools: Plug made with love!'
        sleep 2
        call s:SetBackUpDir()
    else
        call s:SetBackUpDir()
    endif
endfunction

fun! s:CleanUndoDir()
    if isdirectory($HOME."/vimtools_tmp/nvim_tmp/undo_dir")||
                \ isdirectory($HOME."/vimtools_tmp/vim_tmp/undo_dir")
        autocmd BufWritePost !find $HOME/vimtools_tmp/nvim_tmp/undo_dir -type f -mtime +90 -delete
        autocmd BufWritePost !find $HOME/vimtools_tmp/vim_tmp/undo_dir -type f -mtime +90 -delete
        echomsg 'vimtools: UNDO_DIR was cleaned with success'
    endif
endfun

command! -nargs=0 VimToolsCleanUndoDir call s:CleanUndoDir()
command! -nargs=0 VimToolsMakeDir call s:MakeDir()
