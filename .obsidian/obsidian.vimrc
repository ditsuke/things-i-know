" A vimrc for Obsidian's `vim` emulation, made possible by the fantastic
" `obsidian-vimrc-support` community plugin (https://github.com/esm7/obsidian-vimrc-support)


" ==============================================================================================
" Behavior
" ==============================================================================================

" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk

" Yank to system clipboard
set clipboard=unnamed

" ==============================================================================================
" Commands
" ==============================================================================================

" ================================================================|
" Get some vim commands back
" ================================================================|
exmap quit :obcommand workspace:close
exmap q :quit

exmap split :obcommand workspace:split-horizontal
exmap vsplit :obcommand workspace:split-vertical

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
exmap forward obcommand app:go-forward

" Tab switching
exmap tabprev obcommand workspace:previous-tab
exmap tabnext obcommand workspace:next-tab

" Folds
exmap togglefold obcommand editor:toggle-fold
exmap unfoldall obcommand editor:unfold-all
exmap foldall obcommand editor:fold-all

" ================================================================|
" More useful commands
" ================================================================|
exmap Ex :obcommand file-explorer:open

exmap switcher :obcommand switcher:open
exmap commands :obcommand command-palette:open
exmap textsearch :obcommand global-search:open

exmap lineup :obcommand editor:swap-line-up
exmap linedown :obcommand editor:swap-line-down

exmap movefile :obcommand file-explorer:move-file
exmap new :obcommand file-explorer:new-file

" ================================================================|
" Composites from the plugin-provided :surround
" ================================================================|
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

" ==============================================================================================
" Keybindings
" ==============================================================================================

" ================================================================|
" Get some vim-default bindings back
" ================================================================|

" Location nav
nmap <C-o> :back
nmap <C-i> :forward

" Tab nav
nmap gt :tabnext
nmap gT :tabprev

" TODO: Get split navigation to work!
" Somehow the obcommand editor:focus-bottom etc don't work.
" Some missing context arg perhaps?
nmap <C-w>k :obcommand editor:focus-top
nmap <C-w>j :obcommand editor:focus-bottom
nmap <C-w>l :obcommand editor:focus-right
nmap <C-w>h :obcommand editor:focus-left

" Folds
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold
nmap zR :unfoldall
nmap zM :foldall

" ================================================================|
" Bindings I like
" ================================================================|
nmap L :tabnext
nmap H :tabprev


nmap | :vsplit
nmap \ :split

vmap J :linedown
vmap K :lineup

" ================================================================|
" Spacemacs-style bindings
" ================================================================|
unmap <Space>  " Essential for chords starting with <Space>

nmap <Space>q :quit
nmap <Space>e :Ex
nmap <Space>ff :switcher
nmap <Space>fc :commands
nmap <Space>fw :textsearch
nmap <Space>fm :movefile
nmap <Space>h :nohlsearch

" ================================================================|
" Mappings for the :surround command!
" ================================================================|

" NOTE: must use 'map' and not 'nmap'
" ?: and why?
map [[ :surround_wiki
nunmap S
vunmap S
map S" :surround_double_quotes
map S' :surround_single_quotes
map Sb :surround_brackets
map S( :surround_brackets
map S) :surround_brackets
map S[ :surround_square_brackets
map S[ :surround_square_brackets
map S{ :surround_curly_brackets
map S} :surround_curly_brackets
