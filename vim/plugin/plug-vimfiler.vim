" plugin/plug-vimfiler.vim
scriptencoding utf-8
if !dko#IsPlugged('vimfiler.vim') | finish | endif

let g:vimfiler_as_default_explorer = 1

" ============================================================================
" List settings
" ============================================================================

" Default was all dot files. Overriding with just these:
let g:vimfiler_ignore_pattern = [
      \   '^\.git$',
      \   '^\.DS_Store$',
      \ ]

" ============================================================================
" Symbol setup
" ============================================================================

let g:vimfiler_tree_leaf_icon     = ' '
let g:vimfiler_tree_opened_icon   = '▾'
let g:vimfiler_tree_closed_icon   = '▸'
let g:vimfiler_file_icon          = '-'
let g:vimfiler_marked_file_icon   = '*'
let g:vimfiler_readonly_file_icon = 'ʀ'

" ============================================================================
" Shortcut
" ============================================================================

execute dko#BindFunction('<F1>',
      \ 'VimFilerExplorer -parent -explorer-columns=type')

" ============================================================================
" Keymappings
" ============================================================================

augroup dkovimfiler
  autocmd FileType vimfiler
        \ nmap <buffer> u <Plug>(vimfiler_switch_to_parent_directory)
  autocmd FileType vimfiler
        \ nmap <buffer> q <Plug>(vimfiler_close)
augroup END
