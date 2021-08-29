" ====================================================
" FileName: vimtools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" Date: 26.05.2021 15:00
" ====================================================
scriptencoding utf-8

""" g:vimtools_assistant "{{{
fun! s:Assistant()
    let CONFIG_NVIM = $PATH
    let CONFIG_VIM = $PATH
    if has('win32')&&!has('win64')
        if filereadable(expand('$HOME/_vimrc'))
            let $CONFIG_VIM='$HOME/_vimrc'
            map <S-F2> :vsp<Space>$CONFIG_VIM<CR>
        endif
        if filereadable(expand('$HOME/AppData/Local/nvim/init.vim'))
            let $CONFIG_NVIM='$HOME/AppData/Local/nvim/init.vim'
            map <F2> :vsp<Space>$CONFIG_NVIM<CR>
        endif
    else
        if filereadable(expand('$HOME/.vimrc'))
            let $CONFIG_VIM='$HOME/.vimrc'
            map <S-F2> :vsp<Space>$CONFIG_VIM<CR>
        endif
        if filereadable(expand('$HOME/.config/nvim/init.vim'))
            let $CONFIG_NVIM='$HOME/.config/nvim/init.vim'
            map <F2> :vsp<Space>$CONFIG_NVIM<CR>
        endif
    endif
    autocmd FileType vim map <F1> <Nop>
    autocmd FileType vim
          \ map <F1> :vert help <C-R>=expand("<cword>")<CR><CR>
    map <S-F1> <Nop>
    map <S-F1> :vert help<Space>
endfun
"}}}

""" VimToolsMakeDirectories {{{
fun! s:MakeDirectories()
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
    if !isdirectory($HOME."/.config/nvim/spell")
        call mkdir($HOME."/.config/nvim/spell", "p", 0770)
        echom 'vimtools: spelldir for nvim was created'
    endif
    if !isdirectory($HOME."/.vim/spell")
        call mkdir($HOME."/.vim/spell", "p", 0770)
        echom 'vimtools: spelldir for vim was created'
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

fun! s:CleanUndoDir()
    if isdirectory($HOME."/vimtools_tmp/nvim_tmp/undo_dir")||
                \ isdirectory($HOME."/vimtools_tmp/vim_tmp/undo_dir")
        autocmd BufWritePost !find $HOME/vimtools_tmp/nvim_tmp/undo_dir -type f -mtime +90 -delete
        autocmd BufWritePost !find $HOME/vimtools_tmp/vim_tmp/undo_dir -type f -mtime +90 -delete
        echomsg 'vimtools: UNDO_DIR was cleaned with success'
    endif
endfun "}}}

""" g:vimtools_mapsfolding {{{
function! vimtools#MapsFolding()
    nnoremap a za
    vnoremap a za
    nnoremap s zn
    nnoremap S zN
    vnoremap s zf
    vnoremap D zd
endfunction "}}}

""" g:vimtools_selfclosingbracke {{{
function! vimtools#SelfClosingBracke()
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

""" g:vimtools_loaded {{{
function! vimtools#execute()
    if g:vimtools_assistant
        call s:Assistant()
    endif
    if !isdirectory($HOME."/vimtools_tmp")
        call s:MakeDirectories()
        echomsg 'vimtools: Plug made with love!'
        sleep 2
    endif
    if g:vimtools_viewdir_backupdir_undodir
        if !isdirectory($HOME."/vimtools_tmp")
            call s:MakeDirectories()
            echomsg 'vimtools: Plug made with love!'
            sleep 2
            call s:SetBackUpDir()
        else
            call s:SetBackUpDir()
        endif
        if g:vimtools_mapsfolding
            call vimtools#MapsFolding()
        endif
    endif
    if g:vimtools_selfclosingbracke
        call vimtools#SelfClosingBracke()
    endif
endfunction "}}}

""" VimToolsMaxWindows {{{
function! vimtools#ToggleMaxWindows(maxwindows)
    if exists("t:restore_maxwindows") && (a:maxwindows == v:true || t:restore_maxwindows.win != winnr())
        exec t:restore_maxwindows.cmd
        unlet t:restore_maxwindows
        echohl MoreMsg | echon 'vimtools: MaxWindows restored' | echohl None
    elseif a:maxwindows
        let t:restore_maxwindows = { 'win': winnr(), 'cmd': winrestcmd() }
        exec "normal \<C-W>\|\<C-W>_"
        echohl MoreMsg | echon 'vimtools: MaxWindows' | echohl None
    endif
endfunction

augroup RestoreMaxWindows
    au WinEnter * silent! :call vimtools#ToggleMaxWindows(v:false)
augroup END "}}}

""" VimToolsMatheModus {{{
function! s:MatheModusOn()
  echohl MoreMsg | echon 'vimtools: MatheModus has initialized' | echohl None
  let g:vimtools_mathemodus = 0
  imap eps ε
  imap theta θ
  imap kappa κ
  imap pi π
  imap rho ρ
  imap phi φ
  imap sigma σ
  imap beta β
  imap alpha α
  imap delta ∆
  imap sum ∑
  imap ang å
  imap Ang Å
  imap sqr √
  imap int ∫
  imap micra µ
  imap omega Ω
  imap fun ƒ
  imap lam λ
endfunction

function! s:MatheModusOff()
  echohl MoreMsg | echon 'vimtools: MatheModus has ended' | echohl None
  let g:vimtools_mathemodus = 1
  iunmap eps
  iunmap theta
  iunmap kappa
  iunmap pi
  iunmap rho
  iunmap phi
  iunmap sigma
  iunmap beta
  iunmap alpha
  iunmap delta
  iunmap sum
  iunmap ang
  iunmap Ang
  iunmap sqr
  iunmap int
  iunmap micra
  iunmap omega
  iunmap fun
  iunmap lam
endfunction

function! s:ToggleMatheModus()
	if g:vimtools_mathemodus
    "set statusline+=VimToolsMatheModus
    call s:MatheModusOn()
	else
    call s:MatheModusOff()
	endif
endfunction
"}}}

""" VimToolsSpellMorse {{{
fu! s:SpellMorseMapsOn()
  echoh MoreMsg | echon 'vimtools: SpellMorseMaps has initialized' | echoh None
  let s:vimtools_spell_maps = 0
  map mm z=
  map e ]s
  map n ]s
  map N [S
  map b [S
  map a zg
  map A zug
  map w zw
  map W zuw
  map , 1z=
  map . 2z=
  map - 3z=
endf
fu! s:SpellMorseMapsOff()
  echoh MoreMsg | echon 'vimtools: SpellMorseMaps has finished' | echoh None
  let s:vimtools_spell_maps = 1
  unm mm
  unm e
  unm n
  unm N
  unm b
  unm a
  unm A
  unm w
  unm W
  unm ,
  unm .
  unm -
endf
fun! s:ToggleSpellMorseMaps()
	if s:vimtools_spell_maps
    call s:SpellMorseMapsOn()
    let s:vimtools_spell_maps_on = 1
  else
    call s:SpellMorseMapsOff()
    let s:vimtools_spell_maps_on = 0
  endif
endfun
fu! s:ToggleSpell()
  if s:vimtools_spell_maps_on
    if g:vimtools_spell_morse == 1
      let g:vimtools_spell_morse = 0
      se spl=es
      echoh MoreMsg | echon 'vimtools: SpellMorse ES' | echoh None
    elsei g:vimtools_spell_morse == 0
      let g:vimtools_spell_morse = 2
      se spl=de
      echoh MoreMsg | echon 'vimtools: SpellMorse DE' | echoh None
    elsei g:vimtools_spell_morse == 2
      let g:vimtools_spell_morse = 1
      se spl=en
      echoh MoreMsg | echon 'vimtools: SpellMorse EN' | echoh None
    endif
  endif
endf
let s:vimtools_spell_maps = 1
"}}}

if g:vimtools_ruler "{{{
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

if g:vimtools_easy_comment "{{{
    augroup EasyCommentAutocmd
      autocmd FileType vim vnoremap <silent> c :'<, '>norm I"<Space><CR>
      autocmd FileType cpp,c,go,java,javascript,scala,php,rust,jsonc,json vnoremap <silent> c :'<, '>norm I//<Space><CR>
      autocmd FileType python,r,ruby,sh,desktop,fstab,profile,text,tmux,make,dockerfile vnoremap <silent> c :'<, '>norm I#<Space><CR>
      autocmd FileType bashrc,zsh,zshrc,bash_profile,gitignore,,yaml,gdb,gitconfig vnoremap <silent> c :'<, '>norm I#<Space><CR>
      autocmd FileType html,xml vnoremap <silent> c :'<, '>norm I<!--<Space><CR> \| :'<, '>norm A<Space>--><CR>
      autocmd FileType tex vnoremap <silent> c :'<, '>norm I%<Space><CR>
      autocmd FileType mail vnoremap <silent> c :'<, '>norm I><Space><CR>
      autocmd FileType dosbatch vnoremap <silent> c :'<, '>norm IREM<Space><CR>
      autocmd FileType autohotkey vnoremap <silent> c :'<, '>norm I;<Space><CR>
      autocmd FileType lua vnoremap <silent> c :'<, '>norm I--<Space><CR>
    augroup END
endif "}}}

command! -nargs=0 VimToolsSpellMorseMaps        call s:ToggleSpellMorseMaps()
command! -nargs=0 VimToolsSpellMorse            call s:ToggleSpell()
command! -nargs=0 VimToolsMatheModus            call s:ToggleMatheModus()
command! -nargs=0 VimToolsMaxWindows            call vimtools#ToggleMaxWindows(v:true)
command! -nargs=0 VimToolsCleanUndoDir          call s:CleanUndoDir()
command! -nargs=0 VimToolsMakeDirectories       call s:MakeDirectories()
