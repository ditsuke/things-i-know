" A vimrc for Obsidian's `vim` emulation, made possible by the fantastic
" `obsidian-vimrc-support` community plugin (https://github.com/esm7/obsidian-vimrc-support)

" ==============================================================================================
" Get some vim commands back
" ==============================================================================================
exmap quit :obcommand workspace:close
exmap q :quit

exmap split :obcommand workspace:split-horizontal
exmap vsplit :obcommand workspace:split-vertical

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
exmap forward obcommand app:go-forward
"
" Tab switching
exmap tabprev obcommand workspace:previous-tab
exmap tabnext obcommand workspace:next-tab

" Folds
exmap togglefold obcommand editor:toggle-fold
exmap unfoldall obcommand editor:unfold-all
exmap foldall obcommand editor:fold-all

" ==============================================================================================
" Get some vim keybindings back
" ==============================================================================================

" Location nav
nmap <C-o> :back
nmap <C-i> :forward

" Tab nav
nmap gt :tabnext
nmap gT :tabprev

" TODO: Get split navigation to work!
" Somehow the obcommand editor:focus-bottom etc don't work.
" Some missing context arg perhaps?
nmap <C-w> :obcommand editor:focus-top
nmap <C-w> :obcommand editor:focus-bottom
nmap <C-w> :obcommand editor:focus-right
nmap <C-w> :obcommand editor:focus-left

" Folds
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold
nmap zR :unfoldall
nmap zM :foldall

" ==============================================================================================
" Useful commands
" ==============================================================================================
exmap Ex :obcommand file-explorer:open

exmap switcher :obcommand switcher:open
exmap commands :obcommand command-palette:open
exmap textsearch :obcommand global-search:open

exmap lineup :obcommand editor:swap-line-up
exmap linedown :obcommand editor:swap-line-down

exmap movefile :obcommand file-explorer:move-file
exmap new :obcommand file-explorer:new-file

" ==============================================================================================
" Behavior
" ==============================================================================================
" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk

" Yank to system clipboard
set clipboard=unnamed

" ==============================================================================================
" Keybindings I use
" ==============================================================================================
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
" Add mappings for the :surround command!
" ================================================================|
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

" NOTE: must use 'map' and not 'nmap'
map [[ :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map sb :surround_brackets
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s[ :surround_square_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets

