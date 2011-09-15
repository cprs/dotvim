"stop vim from behaving in a strong vi-compatible way
set nocompatible

"enable pathogen
" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []

" example: disable vimoutliner
"call add(g:pathogen_disabled, 'vimoutliner')

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"enable syntax highlighting
syntax on

"enable line numbers
set number

"allow backspacing over autoindent, line breaks and start of insert
set backspace=indent,eol,start

"highlight search matches
set hlsearch

filetype plugin indent on
set ofu=syntaxcomplete#Complete
set tabstop=4
set expandtab
set shiftwidth=4
colorscheme xoria256

if has("gui_running")
    if has("win32")
        au GUIEnter * simalt ~x "maximize window
    endif

    "nice font
    if has("win32")
        set guifont=Anonymous\ Pro:h12
    else
        set guifont=Anonymous\ Pro\ 14
    endif

    "nice colors
    let g:solarized_termtrans=1
    let g:solarized_termcolors=245
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"
    colorscheme solarized
endif

"plantuml
autocmd BufRead,BufNewFile *_class.txt set filetype=plantuml
autocmd BufRead,BufNewFile *_sequence.txt set filetype=plantuml
autocmd BufRead,BufNewFile *_component.txt set filetype=plantuml

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
