call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/syntastic'

Plug 'vim-syntastic/syntastic'
Plug 'tbastos/vim-lua'
Plug 'rust-lang/rust.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'mxw/vim-jsx'
Plug 'elixir-editors/vim-elixir'

Plug 'ayu-theme/ayu-vim'

call plug#end()

set tabstop=2
set shiftwidth=2
set nu

set termguicolors
let ayucolor="dark"
colorscheme ayu

" NERDTree
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" AG
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" CtrlP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
