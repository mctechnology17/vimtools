"=========================================
" FileName: vimtools.vim
" Date: 15:57 09.April.2022
" Author: Marcos Chow Castro
" Email: mctechnology170318@gmail.com
" GitHub: https://github.com/mctechnology17
" Brief: <brief>
"==========================================
scriptencoding utf-8

let s:cpo_orig = &cpo
set cpo&vim

""" g:vimtools_assistant "{{{
fun! s:Assistant()
    let CONFIG_NVIM = $PATH
    let CONFIG_VIM = $PATH
    if has('win32')||has('win64') "{{{
        if filereadable(expand('$HOME/_vimrc'))
            let $CONFIG_VIM='$HOME/_vimrc'
            map <S-F2> :vsp<Space>$CONFIG_VIM<CR>
        endif
        if filereadable(expand('$HOME/AppData/Local/nvim/init.vim'))
            let $CONFIG_NVIM='$HOME/AppData/Local/nvim/init.vim'
            map <F2> :vsp<Space>$CONFIG_NVIM<CR>
        endif "}}}
    else "{{{
        if filereadable(expand('$HOME/.vimrc'))
            let $CONFIG_VIM='$HOME/.vimrc'
            map <S-F2> :vsp<Space>$CONFIG_VIM<CR>
        endif
        if filereadable(expand('$HOME/.config/nvim/init.vim'))
            let $CONFIG_NVIM='$HOME/.config/nvim/init.vim'
            map <F2> :vsp<Space>$CONFIG_NVIM<CR>
        endif
    endif "}}}
    map <F1> <Nop>
    map <F1> :vert help <C-R>=expand("<cword>")<CR><CR>
    map <S-F1> <Nop>
    map <S-F1> :vert help<Space>
endfun "}}}
""" VimToolsMakeDirectories {{{
fun! s:MakeDirectories() "{{{
    if !isdirectory($HOME."/vimtools_tmp") "{{{
        call mkdir($HOME."/vimtools_tmp", "p", 0770)
        echomsg 'vimtools: $HOME/vimtools_tmp folder was created'
        sleep 1
    endif "}}}
    if !isdirectory($HOME."/vimtools_tmp/nvim_tmp") "{{{
        call mkdir($HOME."/vimtools_tmp/nvim_tmp", "p", 0770)
        echomsg 'vimtools: nvim_tmp was created'
    endif "}}}
    if !isdirectory($HOME."/vimtools_tmp/nvim_tmp/undo_dir") "{{{
        call mkdir($HOME."/vimtools_tmp/nvim_tmp/undo_dir", "p", 0700)
        echomsg 'vimtools: undo_dir was created'
    endif "}}}
    if !isdirectory($HOME."/vimtools_tmp/nvim_tmp/nvim_viewdir") "{{{
        call mkdir($HOME."/vimtools_tmp/nvim_tmp/nvim_viewdir", "p", 0770)
        echomsg 'vimtools: nvim_viewdir was created'
    endif "}}}
    if !isdirectory($HOME."/vimtools_tmp/vim_tmp") "{{{
        call mkdir($HOME."/vimtools_tmp/vim_tmp", "p", 0770)
        echomsg 'vimtools: vim_tmp was created'
    endif "}}}
    if !isdirectory($HOME."/vimtools_tmp/vim_tmp/undo_dir") "{{{
        call mkdir($HOME."/vimtools_tmp/vim_tmp/undo_dir", "p", 0700)
        echomsg 'vimtools: undo_dir was created'
    endif "}}}
    if !isdirectory($HOME."/vimtools_tmp/vim_tmp/vim_viewdir") "{{{
        call mkdir($HOME."/vimtools_tmp/vim_tmp/vim_viewdir", "p", 0770)
        echomsg 'vimtools: vim_viewdir was created'
    endif "}}}
    if !isdirectory($HOME."/.config/nvim/spell") "{{{
        call mkdir($HOME."/.config/nvim/spell", "p", 0770)
        echom 'vimtools: spelldir for nvim was created'
    endif "}}}
    if !isdirectory($HOME."/.vim/spell") "{{{
        call mkdir($HOME."/.vim/spell", "p", 0770)
        echom 'vimtools: spelldir for vim was created'
    endif "}}}
    echomsg 'vimtools: Directories created with success'
endfun "}}}
fun! s:SetBackUpDir() "{{{
    if has('nvim')
        set viewdir=~/vimtools_tmp/nvim_tmp/nvim_viewdir   " folding
        set directory=~/vimtools_tmp/nvim_tmp//,.   " swap
        set backupdir=~/vimtools_tmp/nvim_tmp//,.
        set undodir=~/vimtools_tmp/nvim_tmp/undo_dir
    else
        set viewdir=~/vimtools_tmp/vim_tmp/vim_viewdir   " folding
        set directory=~/vimtools_tmp/vim_tmp//,.   " swap
        set backupdir=~/vimtools_tmp/vim_tmp//,.
        set undodir=~/vimtools_tmp/vim_tmp/undo_dir
    endif
    if g:vimtools_folding == 1
        au BufReadPre * setlocal foldmethod=indent
        au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
    elseif g:vimtools_folding == 2
        autocmd BufWinLeave *.* mkview
        autocmd BufWinEnter *.* silent! loadview
    endif
    set backup
    set undofile
    set noswapfile
endfun "}}}
fun! s:CleanUndoDir() "{{{
    if isdirectory($HOME."/vimtools_tmp/nvim_tmp/undo_dir")||
                \ isdirectory($HOME."/vimtools_tmp/vim_tmp/undo_dir")
        if has('nvim')
            autocmd BufWritePost !find $HOME/vimtools_tmp/nvim_tmp/undo_dir -type f -mtime +90 -delete
        else
            autocmd BufWritePost !find $HOME/vimtools_tmp/vim_tmp/undo_dir -type f -mtime +90 -delete
        endif
        echomsg 'vimtools: UNDO_DIR was cleaned with success'
    endif
endfun "}}}
"}}}
""" g:vimtools_mapsfolding {{{
function! vimtools#MapsFolding()
    " open/close folding
    nnoremap a za
    vnoremap a za
    " open/close all folding
    nnoremap s zM
    nnoremap S zR
    " visual: Operator to create a fold.
    vnoremap s zf
    " visual: Delete folds recursively at the cursor.
    vnoremap D zd
endfunction "}}}
""" g:vimtools_closingbracke {{{
function! vimtools#closingbracke()
    inoremap ( ()<Esc>i
    inoremap [ []<Esc>i
    inoremap { {}<Esc>i
    " inoremap < <><Esc>i
    inoremap ¿ ¿?<Esc>i
    inoremap ¡ ¡!<Esc>i
    inoremap ' ''<Esc>i
    inoremap " ""<Esc>i
    inoremap ` ``<Esc>i
endfunction "}}}
""" g:vimtools_loaded vimtools#execute {{{
function! vimtools#execute()
  if g:vimtools_assistant "{{{
    call s:Assistant()
  endif "}}}
  if !isdirectory($HOME."/vimtools_tmp") "{{{
    call s:MakeDirectories()
    echomsg 'vimtools: Plug made with love!'
    sleep 2
  endif "}}}
  if g:vimtools_directories "{{{
    if !isdirectory($HOME."/vimtools_tmp") "{{{
      call s:MakeDirectories()
      echomsg 'vimtools: Plug made with love!'
      sleep 2
      call s:SetBackUpDir() "}}}
    else "{{{
      call s:SetBackUpDir()
    endif "}}}
    if g:vimtools_mapsfolding "{{{
      call vimtools#MapsFolding()
    endif "}}}
  endif "}}}
  if g:vimtools_closingbracke "{{{
    call vimtools#closingbracke()
  endif "}}}
endfunction "}}}
""" VimToolsMaxWindows {{{
if g:vimtools_maxwindows
  function! vimtools#ToggleMaxWindows(maxwindows)
    if exists("t:restore_maxwindows") && (a:maxwindows == v:true || t:restore_maxwindows.win != winnr())
      exec t:restore_maxwindows.cmd
      unlet t:restore_maxwindows
      echohl MoreMsg | echon 'vimtools: VimToolsMaxWindows restored' | echohl None
      " echohl MoreMsg | echon '░▒▓ vimtools  MaxWindows OFF ' | echohl None
    elseif a:maxwindows
      let t:restore_maxwindows = { 'win': winnr(), 'cmd': winrestcmd() }
      exec "normal \<C-W>\|\<C-W>_"
      echohl MoreMsg | echon 'vimtools: VimToolsMaxWindows' | echohl None
      " echohl MoreMsg | echon '░▒▓ vimtools  MaxWindows ON ' | echohl None
    endif
  endfunction
  au WinEnter * silent! :call vimtools#ToggleMaxWindows(v:false)
endif "}}}
""" VimToolsMatheModus {{{
function! s:MatheModusOn() "{{{
  echohl MoreMsg | echon 'vimtools: VimToolsMatheModus has initialized' | echohl None
  let g:vimtools_mathemodus = 0
  call mathemodus#MatheModusOn()
endfunction "}}}
function! s:MatheModusOff() "{{{
  echohl MoreMsg | echon 'vimtools: VimToolsMatheModus has ended' | echohl None
  let g:vimtools_mathemodus = 1
  call mathemodus#MatheModusOff()
endfunction "}}}
function! s:ToggleMatheModus() "{{{
	if g:vimtools_mathemodus
    call s:MatheModusOn()
	else
    call s:MatheModusOff()
	endif
endfunction "}}}
"}}}
""" VimToolsSpellMorse {{{
function! s:SpellMorseMapsOn() "{{{ ░▒░
  echohl MoreMsg | echon 'vimtools: SpellMorse ON' | echohl None
  " echohl MoreMsg | echon '░▒▓ vimtools  SpellMorse ON ' | echohl None
  " echohl MoreMsg | echon 'vimtools: VimToolsSpellMorseIdiomsMaps has initialized' | echohl None
  let s:vimtools_spellmaps = 0
  map m <Nop>
  map m z=
  map w <Nop>
  map w ]s
  map e <Nop>
  map e ]s
  map n <Nop>
  map n ]s
  map N <Nop>
  map N [S
  map b <Nop>
  map b [S
  map y <Nop>
  map y zg
  map Y <Nop>
  map Y zug
  map x <Nop>
  map x zw
  map X <Nop>
  map X zuw
  " map , <Nop>
  " map , 1z=
  " map . <Nop>
  " map . 2z=
  " map - <Nop>
  " map - 3z=
  map . <Nop>
  map . 1z=
  map .. <Nop>
  map .. 2z=
  map ... <Nop>
  map ... 3z=
endfunction "}}}
function! s:SpellMorseMapsOff() "{{{
  " echohl MoreMsg | echon 'vimtools: VimToolsSpellMorseIdiomsMaps has finished' | echohl None
  echohl MoreMsg | echon 'vimtools: SpellMorse OFF' | echohl None
  " echohl MoreMsg | echon '░▒▓ vimtools  SpellMorse OFF ' | echohl None
  let s:vimtools_spellmaps = 1
  unmap m
  unmap w
  unmap e
  unmap n
  unmap N
  unmap b
  unmap y
  unmap Y
  unmap x
  unmap X
  " unmap ,
  " unmap .
  " unmap -
  unmap .
  unmap ..
  unmap ...
endfunction "}}}
function! s:ToggleSpellMorseMaps() "{{{
	if s:vimtools_spellmaps
    " test
    let g:loaded_visual_multi = 1
    call s:SpellMorseMapsOn()
    let s:vimtools_spellmaps_on = 1
  else
    " test
    let g:loaded_visual_multi = 0
    call s:SpellMorseMapsOff()
    let s:vimtools_spellmaps_on = 0
    if g:vimtools_directories
        if g:vimtools_mapsfolding
            call vimtools#MapsFolding()
        endif
    endif
  endif
endfunction "}}}
function! s:ToggleSpellIdioms() "{{{
  if s:vimtools_spellmaps_on
    if g:vimtools_spellmorse == 1
      let g:vimtools_spellmorse = 0
      setlocal spelllang=es
      echohl MoreMsg | echon 'vimtools: VimToolsSpellMorseIdioms ES' | echohl None
      " echohl MoreMsg | echon '░▒▓ vimtools  SpellMorse ES ' | echohl None
    elseif g:vimtools_spellmorse == 0
      let g:vimtools_spellmorse = 2
      setlocal spelllang=de
      echohl MoreMsg | echon 'vimtools: VimToolsSpellMorseIdioms DE' | echohl None
      " echohl MoreMsg | echon '░▒▓ vimtools  SpellMorse DE ' | echohl None
    elseif g:vimtools_spellmorse == 2
      let g:vimtools_spellmorse = 1
      setlocal spelllang=en
      echohl MoreMsg | echon 'vimtools: VimToolsSpellMorseIdioms EN' | echohl None
      " echohl MoreMsg | echon '░▒▓ vimtools  SpellMorse EN ' | echohl None
    endif
  endif
endfunction "}}}
fun! s:ToggleSpell() "{{{
    if g:vimtools_spellmorsesuggest == 1
        set spellsuggest=best,10
    elsei g:vimtools_spellmorsesuggest == 2
        set spellsuggest=best,20
    endif
    setlocal spell!
    exe "VimToolsSpellMorseMaps"
endfun "}}}
let s:vimtools_spellmaps = 1
"}}}
if g:vimtools_stateruler "{{{
  function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  endfunction

  function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
  endfunction

  set showcmd
  set ruler
  set rulerformat=%15(%c%V\ %p%%%)
  " set title
  " F: PATH a: estado lista argumentos
  " r: indicador de solo lectura m: indicador modificado
  " set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

  set laststatus=2
  set statusline=
  set statusline+=%#PmenuSel#
  set statusline+=%{StatuslineGit()}
  set statusline+=%#LineNr#
  set statusline+=\ %f
  set statusline+=%m\
  set statusline+=%=
  set statusline+=%#CursorColumn#
  set statusline+=\ %y
  set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
  set statusline+=\[%{&fileformat}\]
  set statusline+=\ %p%%
  set statusline+=\ %l:%c
  set statusline+=\
endif "}}}
if g:vimtools_easycomment "{{{
    augroup EasyCommentAutocmd
      autocmd FileType vim vnoremap <silent> C :'<, '>norm I"<Space><CR>
      autocmd FileType vimwiki,markdown vnoremap <silent> C :'<, '>norm I[//]: # ( <CR> \| :'<, '>norm A<Space>)<CR>
      autocmd FileType cpp,c,go,java,javascript,scala,php,rust,jsonc,json vnoremap <silent> C :'<, '>norm I//<Space><CR>
      autocmd FileType python,r,ruby,sh,desktop,fstab,profile,text,tmux,make,dockerfile vnoremap <silent> C :'<, '>norm I#<Space><CR>
      autocmd FileType bashrc,zsh,zshrc,bash_profile,gitignore,yaml,gdb,gitconfig,conf vnoremap <silent> C :'<, '>norm I#<Space><CR>
      autocmd FileType fish,sshconfig vnoremap <silent> C :'<, '>norm I#<Space><CR>
      autocmd FileType html,xml vnoremap <silent> C :'<, '>norm I<!--<Space><CR> \| :'<, '>norm A<Space>--><CR>
      autocmd FileType tex,plaintex vnoremap <silent> C :'<, '>norm I%<Space><CR>
      autocmd FileType mail vnoremap <silent> C :'<, '>norm I><Space><CR>
      autocmd FileType dosbatch vnoremap <silent> C :'<, '>norm IREM<Space><CR>
      autocmd FileType autohotkey vnoremap <silent> C :'<, '>norm I;<Space><CR>
      autocmd FileType lua vnoremap <silent> C :'<, '>norm I--<Space><CR>
    augroup END
endif "}}}
""" CMDS {{{
command! -nargs=0 VimToolsSpellMorse            call s:ToggleSpell()
command! -nargs=0 VimToolsSpellMorseMaps        call s:ToggleSpellMorseMaps()
command! -nargs=0 VimToolsSpellMorseIdioms      call s:ToggleSpellIdioms()
command! -nargs=0 VimToolsMatheModus            call s:ToggleMatheModus()
command! -nargs=0 VimToolsMaxWindows          call vimtools#ToggleMaxWindows(v:true)
command! -nargs=0 VimToolsCleanUndoDir          call s:CleanUndoDir()
command! -nargs=0 VimToolsMakeDirectories       call s:MakeDirectories()
"}}}

let &cpo = s:cpo_orig
unlet s:cpo_orig

" vim: set sw=2 ts=2 sts=2 et ft=vim fdm=marker:
