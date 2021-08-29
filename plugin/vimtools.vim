" ====================================================
" FileName: vimtools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" Date: 26.05.2021 15:00
" ====================================================
scriptencoding utf-8

if !exists('g:vimtools_loaded')
    let g:vimtools_loaded =
                \ get(g:, 'vimtools_loaded', 1)
endif
if !exists('g:vimtools_assistant')
    let g:vimtools_assistant =
                \ get(g:, 'vimtools_assistant', 1)
endif
if !exists('g:vimtools_mapsfolding')
    let g:vimtools_mapsfolding =
                \ get(g:, 'vimtools_mapsfolding', 1)
endif
if !exists('g:vimtools_viewdir_backupdir_undodir')
    let g:vimtools_viewdir_backupdir_undodir =
                \ get(g:, 'viewdir_backupdir_undodir', 1)
endif
if !exists('g:vimtools_selfclosingbracke')
    let g:vimtools_selfclosingbracke =
                \ get(g:, 'vimtools_selfclosingbracke', 1)
endif
if !exists('g:vimtools_mathemodus')
    let g:vimtools_mathemodus =
                \ get(g:, 'vimtools_mathemodus', 1)
endif
if !exists('g:vimtools_spell_morse')
    let g:vimtools_spell_morse =
                \ get(g:, 'vimtools_spell_morse', 1)
endif
if !exists('g:vimtools_ruler')
    let g:vimtools_ruler =
                \ get(g:, 'vimtools_ruler', 1)
endif
if !exists('g:vimtools_easy_comment')
    let g:vimtools_easy_comment =
                \ get(g:, 'vimtools_ruler', 1)
endif
if g:vimtools_loaded
    call vimtools#execute()
endif
