call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set guifont=Anonymous\ Pro:h12
filetype plugin on
set ofu=syntaxcomplete#Complete
set tabstop=4
set expandtab
set shiftwidth=4
colorscheme xoria256

if has("gui_running")
    colorscheme solarized
endif

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
