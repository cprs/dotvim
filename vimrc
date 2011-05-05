call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
:set guifont=Consolas\ 14
filetype plugin on
set ofu=syntaxcomplete#Complete
:set tabstop=4
:set expandtab
:set shiftwidth=4
colorscheme xoria256

if has("gui_running")
    colorscheme solarized
endif
