" ====================================================
" FileName: vimtools.vim
" Author: MC Technology <mctechnology170318@gmail.com>
" GitHub: https://github.com/mctechnology17
" Date: 26.05.2021 15:00
" ====================================================
scriptencoding utf-8

if !exists('g:vimtools_loaded') "{{{
  let g:vimtools_loaded =
        \ get(g:, 'vimtools_loaded', 1)
endif "}}}
if g:vimtools_loaded
  if !exists('g:vimtools_assistant') "{{{
    let g:vimtools_assistant =
              \ get(g:, 'vimtools_assistant', 1)
  endif "}}}
  if !exists('g:vimtools_mapsfolding') "{{{
    let g:vimtools_mapsfolding =
              \ get(g:, 'vimtools_mapsfolding', 1)
  endif "}}}
  if !exists('g:vimtools_folding') "{{{
    let g:vimtools_folding =
              \ get(g:, 'vimtools_folding', 1)
  endif "}}}
  if !exists('g:vimtools_directories') "{{{
    let g:vimtools_directories =
              \ get(g:, 'directories', 1)
  endif "}}}
  if !exists('g:vimtools_closingbracke') "{{{
    let g:vimtools_closingbracke =
              \ get(g:, 'vimtools_closingbracke', 1)
  endif "}}}
  if !exists('g:vimtools_mathemodus') "{{{
    let g:vimtools_mathemodus =
              \ get(g:, 'vimtools_mathemodus', 1)
  endif "}}}
  if !exists('g:vimtools_spellmorse') "{{{
    let g:vimtools_spellmorse =
              \ get(g:, 'vimtools_spellmorse', 1)
  endif "}}}
  if !exists('g:vimtools_spellmorsesuggest') "{{{
    let g:vimtools_spellmorsesuggest =
              \ get(g:, 'vimtools_spellmorsesuggest', 1)
  endif "}}}
  if !exists('g:vimtools_stateruler') "{{{
    let g:vimtools_stateruler =
              \ get(g:, 'vimtools_stateruler', 1)
  endif "}}}
  if !exists('g:vimtools_easycomment') "{{{
    let g:vimtools_easycomment =
              \ get(g:, 'vimtools_easycomment', 1)
  endif "}}}
  if !exists('g:vimtools_maxwindows') "{{{
    let g:vimtools_maxwindows =
              \ get(g:, 'maxwindows', 1)
  endif "}}}
  call vimtools#execute()
endif

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
