call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'rking/ag.vim' " Source Coder search Plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator'
"F3 Plug 'roxma/nvim-completion-manager'
Plug 'yggdroot/indentline'
Plug 'mbbill/undotree'
Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale' " Asynchronous Linting Engine
Plug 'wincent/command-t'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
call plug#end()

let g:SuperTabDefaultCompletionType = '<C-n>'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Let's save undo info!
" if !isdirectory($HOME."/.vim")
"     call mkdir($HOME."/.vim")
" endif
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo")
endif
if !isdirectory($HOME."/.vim/swap")
    call mkdir($HOME."/.vim/swap")
endif
if !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup")
endif





" Fast saving
nnoremap <LEADER>w :w!<CR>
nnoremap <LEADER>to :tabonly<CR>
nnoremap <LEADER>b :b<space>



set number
set relativenumber
set cursorline
" set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" colorscheme slate
set background=dark
" colorscheme iceberg
colorscheme OceanicNext
"colorscheme afterglow
set previewheight=10
set ignorecase
set smartcase
" turn off search highlight
nnoremap <LEADER><ESC> :nohlsearch<CR>
set ruler
set path+=.,,**
" set lazyredraw          " redraw only when we need to.
nnoremap <LEADER>gd :YcmCompleter GoTo<CR>
nnoremap <LEADER>gr :YcmCompleter GoToReferences<CR>
nnoremap <LEADER>t :terminal<CR>
nnoremap <silent> \ ,
nnoremap Y y$

" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
" set lbr
" set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set listchars=tab:\|\
set list
set dictionary+=/usr/share/dict/words
nnoremap <leader>ct :checktime<CR>
" check one time after 4s of inactivity in normal mode
" set autoread
" au CursorHold * checktime 


set foldenable
set foldlevelstart=10 " open most folds by default
set foldminlines=10
set foldnestmax=10 " 10 nested folds max
set foldmethod=indent
nnoremap <space> za



" inoremap jj <ESC>
" open ag.vim
nnoremap <leader>ag :Ag<space>
nnoremap <leader>f :find<space>

set undofile
set undodir=~/.vim/undo/
set backup
set backupdir=~/.vim/backup/
set writebackup
set directory=~/.vim/swap/
" move vertically by visual line
" nnoremap j gj
nnoremap j gj
nnoremap k gk
" Tab navigation like Firefox.
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>
" Buffer navigation like Firefox.
nnoremap <C-b>   :bnext<CR>
" Redraw vim screen
nnoremap <LEADER>l <C-l>
" Toggle NerdTree
nnoremap <LEADER>n :NERDTreeToggle<CR>
" Window Split Switching
nnoremap <C-i> <C-o>
nnoremap <C-o> <C-i>
vnoremap < <gv
vnoremap > >gv

tnoremap <ESC><ESC> <C-\><C-n>



" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" YCM or YouCompleteMe settings
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_server_python_interpreter = '/usr/bin/python3.6' " change this according to the YcmRestartSerever Error
let g:ycm_python_binary_path = 'python3.6'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_goto_buffer_command = 'vertical-split'


" CtrlP settings
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
" let g:airline_symbols_ascii = 1
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch', 'tabline', 'quickfix', 'fugitiveline', 'hunks', 'ycm', 'ale', 'ctrlp' ]
let g:airline#extensions#tabline#tab_nr_type = 2

" indentline settings
" Vim
let g:indentLine_char = '┆'

" vim-autoformat settings
" au BufWrite * :Autoformat
noremap <leader>af :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:formatter_yapf_style = 'pep8'

" Ale settings
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nnoremap <silent><C-k> :ALEPreviousWrap<CR>
nnoremap <silent><C-j> :ALENextWrap<CR>
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
" let g:ale_lint_on_enter = 0
" Write this in your vimrc file
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" Check Python files with flake8 and pylint.
" let g:ale_linters = ['flake8', 'pylint']
" Fix Python files with autopep8 and yapf.
" let g:ale_fixers = ['autopep8', 'yapf']


" vim-devicons settings


" syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_loc_list_height = 3

" nerdcommenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
