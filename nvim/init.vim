" INIT
" ============================================================
set nocompatible
syntax on
set nowrap
set encoding=utf8
filetype off

" PLUGIN'S
" ============================================================
call plug#begin()
"COLORSCHEMES
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
"GERAL
Plug 'scrooloose/nerdtree'
Plug 'ivalkeen/nerdtree-execute'
Plug 'ervandew/supertab'
Plug 'vim-scripts/BufOnly.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'godlygeek/tabular'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-bufferline'
Plug 'terryma/vim-multiple-cursors'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'ap/vim-css-color'
" PYTHON LANGUAGE
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'sirver/ultisnips'
call plug#end()

" CONFIGURAÇÃO 
" ============================================================
" General
" ___________________________________________________________
colorscheme onedark "Seleciona o tema
autocmd VimEnter * NERDTree ~/0_git " Já abre o vim com o NERTREE aberto na pasta desejada
let NERDTreeWinSize = 30 " Largura definida para a abertura do nerdtree
let g:NERDTreeWinPos = "right" " Abre o nertree no canto direito
set number "coloca números nas linhas
set relativenumber "coloca números realtivos nas linhas
set inccommand=split " Abre um visor splitado para comandos, por exemplo o %s/"Digitar o que vai mudar"/"nova escrita"
set mouse=a "Ativa o mouse
set splitright " Ativa o splitamento na vertical para a direita
"set noshowmode " remove o status na linha de comandos
set shortmess+=F
set noruler
set noshowcmd
set laststatus=0
set termguicolors
"set cursorline " Mostra a linha do cursor
set clipboard=unnamedplus "ativa a área de tranferência do OS
hi Normal guibg=NONE "remove a cor de fundo do vim
let &fcs='eob: ' " Remove os ~ da linha de número
set colorcolumn=80

" Airline
" ___________________________________________________________
let g:airline#extensions#tabline#enabled = 1  " Ativa a lista de buffers para aparecer a tab no top
let g:airline#extensions#tabline#fnamemod = ':t' " Mostra o nome do arquivo no topo da tela
let g:airline_section_a = airline#section#create([''])
"let g:airline_section_b = airline#section#create([''])
let g:airline_section_c = airline#section#create([''])
let g:airline_section_gutter = airline#section#create([''])
let g:airline_section_x = airline#section#create(['hunks'])
let g:airline_section_y = airline#section#create([''])
let g:airline_section_error = airline#section#create([''])
let g:airline_section_warning = airline#section#create([''])
let g:airline_section_z = airline#section#create(['branch', ' [%p%%]  [%l/%L]'])
let g:airline#extensions#nerdtree_statusline = 0
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
set ttimeoutlen=50
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.dirty=' ⚡'

" ___________________________________________________________


" SHORTCUTS KEYBOARD
" ============================================================
" ============================================================
nnoremap <c-t> :bnext<CR> " Passa para a próxima tab superior
map <c-\> :NERDTreeToggle<CR> " Atalho do NERDtree para navegar nos arquivos no canto esquerdo
let mapleader="\<space>" " Torna o espaço como tecla lider para comandos
nnoremap <leader>q :vsplit ~/.config/nvim/init.vim<CR> " Carrega o arquivo de configs do vim
map <c-s> :w<CR> " Comando ALT+S para salvar o arquivo
"map <c-z> :u<CR> " Comando para desfazer alterações
nnoremap <silent> = :vertical resize +10<CR> " Aumenta o tamanho da tela na horizontal
nnoremap <silent> + :resize +10<CR> " Aumenta o tamanho da tela na vertica
nnoremap <silent> - :vertical resize -10<CR> " Diminui o tamanho da tela na horizontal
nnoremap <silent> <leader>- :resize -10<CR> " Diminui o tamanho da tela na vertica
nnoremap <silent> <leader>= :only<cr> " Atalho para abrir uma janela maximizada
nnoremap <silent> <leader><F4> :bd<cr> " fecha o arquivo no buffer
nnoremap <c-r> :call ReplaceAll()<cr> 
nnoremap <silent> <leader>v :vsplit<cr> " Abre um vertical split
nnoremap <silent> <leader>h :split<cr> " Abre um horizontal split


" ATALHOS
" $ - Ir para o final da linha
" 0 - Ir para o ínicio da linha
" G - Ir para o final do código
" gg - Ir para o ínicio do código
" y - No modo visual copia código
" p - No modo visual/normal cola os códigos
" CTRL + p no modo insert ativa o autocomplete

" LOCALIZAR
"/PESQUISA - Pesquisa palavra
" n    - Localiza a próxima ocorrência
" N    - Localiza a ocorrência na direção contrária
" :%s/antes/depois/ - Substitui a primeira ocorrência dos termos localizados em todas as linhas
