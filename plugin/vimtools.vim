" ====================================================
" FileName: vimtools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" Date: 26.05.2021 15:00
" ====================================================
scriptencoding utf-8

if !exists('g:vimtools_loaded')
    let g:vimtools_loaded = get(g:, 'vimtools_loaded', 1)
endif
if !exists('g:vimtools_setvsp_loaded')
    let g:vimtools_setvsp_loaded = get(g:, 'vimtools_setvsp_loaded', 1)
endif

if g:vimtools_loaded
    call vimtools#execute()
endif
