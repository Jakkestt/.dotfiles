set laststatus=2
set showtabline=1
set noshowmode
set t_Co=256
set number
set softtabstop=0 noexpandtab
set tabstop=4
set shiftwidth=4
set splitright
set updatetime=300
set autoindent

set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//
set undodir=~/.config/nvim/undo//

nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-p> "+P

call plug#begin()
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'vim-airline/vim-airline'
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/nvim-compe'
call plug#end()

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

luafile ~/.config/nvim/lua/compe-config.lua
"luafile ~/.config/nvim/lua/python-ls.lua
"luafile ~/.config/nvim/lua/rust-ls.lua
lua << EOF
require('lspconfig').pyright.setup()
EOF

" LSP config (the mappings used in the default file don't quite work right)
"nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
"nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
"nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
"nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
"nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
"nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
"nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
"
"" auto-format
"autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
"autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
"autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

let g:airline#extensions#tabline#enabled = 1

colorscheme dracula
