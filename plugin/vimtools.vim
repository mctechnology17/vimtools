" ====================================================
" FileName: vimtools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" Date: 26.05.2021 15:00
" ====================================================
scriptencoding utf-8

if !exists('g:vimtools_loaded')
    let g:vimtools_loaded = get(g:, 'vimtools_loaded', 0)
endif

if g:vimtools_loaded == 0
    call vimtools#execute()
endif
