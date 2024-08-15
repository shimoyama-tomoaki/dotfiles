:syntax on
:filetype on

" 折り返し
set nowrap

set hlsearch
set ignorecase
set smartcase

set ruler
set number
" set list
set wildmenu
set history=5000
set showcmd

" 色設定
set t_Co=256
set background=dark

" カラースキーム
" molokai
" autocmd ColorScheme * highlight Visual ctermfg=233 ctermbg=118
" colorscheme molokai
" let g:molokai_original=1

" one_dark
" autocmd ColorScheme * highlight Normal ctermbg=none
" autocmd ColorScheme * highlight Visual ctermfg=233 ctermbg=11 cterm=BOLD
" autocmd ColorScheme * highlight LineNr ctermfg=180
" autocmd ColorScheme * highlight Comment ctermfg=244
" colorscheme onedark
" let g:onedark_original=256

" twilight
" autocmd ColorScheme * highlight Directory ctermfg=179
" autocmd ColorScheme * highlight Normal ctermfg=253
" colorscheme twilight256

" wombat
" autocmd ColorScheme * highlight Directory ctermfg=113
" autocmd ColorScheme * highlight Statement ctermfg=110
" autocmd ColorScheme * highlight LineNr ctermbg=none
" autocmd ColorScheme * highlight Normal ctermbg=none
" autocmd ColorScheme * highlight NonText ctermbg=none
" autocmd ColorScheme * highlight SpecialKey ctermbg=none
" autocmd ColorScheme * highlight EndOfBuffer ctermbg=none
" colorscheme wombat256mod

" 1989
" autocmd ColorScheme * highlight Normal ctermbg=none
" autocmd ColorScheme * highlight LineNr ctermbg=none
" autocmd ColorScheme * highlight Visual ctermbg=102
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=225 guibg=#ffdfff
" autocmd ColorScheme * highlight Search cterm=none ctermfg=236 ctermbg=225 guifg=#303030 guibg=#ffdfff
" autocmd ColorScheme * highlight NonText ctermbg=none ctermfg=102
" autocmd ColorScheme * highlight Comment term=bold ctermfg=246 gui=italic guifg=#9c998e
" colorscheme 1989

" iceberg
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight NonText ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none ctermfg=242
autocmd ColorScheme * highlight SpecialKey ctermbg=none
autocmd ColorScheme * highlight Visual ctermbg=239
autocmd ColorScheme * highlight EndOfBuffer ctermbg=none
autocmd ColorScheme * highlight CursorLine ctermbg=236
autocmd ColorScheme * highlight MatchParen ctermbg=245
colorscheme iceberg

" cosme
" autocmd ColorScheme * highlight Normal ctermbg=none ctermfg=254
" autocmd ColorScheme * highlight NonText ctermbg=none
" autocmd ColorScheme * highlight LineNr ctermbg=none
" autocmd ColorScheme * highlight SpecialKey ctermbg=none
" autocmd ColorScheme * highlight Visual ctermbg=239
" autocmd ColorScheme * highlight EndOfBuffer ctermbg=none
" autocmd ColorScheme * highlight CursorLine ctermbg=236
" colorscheme cosme

autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html
autocmd! BufNewFile,BufRead *.vs,*.fs,*.frag set ft=glsl

" タブ,インデント設定
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent

" クリップボード有効
set clipboard=unnamed,autoselect
" ステータスライン設定
set laststatus=2
" swapファイル
:set noswapfile
" vi互換モード
set nocompatible
" Backspace有効
set backspace=indent,eol,start
" 上下最小値
set scrolloff=10
" ハイフンを単語の境界にしない
set isk+=-
" 行番号強調
set cursorline
hi clear CursorLine
hi CursorLineNr cterm=NONE ctermfg=150 ctermbg=NONE


" 文字エンコード
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix,dos,mac

set visualbell t_vb =
set noerrorbells

au BufRead,BufNewFile *.scss set filetype=sass

" キーマッピング
autocmd FileType sass inoremap{<Enter> {}<LEFT><CR><ESC><S-o><TAB>
autocmd FileType sass inoremap[<Enter> []<LEFT><CR><ESC><S-o><TAB>
inoremap <C-n> <CR><ESC><S-o>
inoremap <silent> jj <ESC>

nnoremap <Space>h ^
nnoremap <Space>l $
nnoremap <S-j> <S-j>x
" yank無効
nnoremap x "_x

vnoremap <Space>h ^
vnoremap <Space>l $

noremap j gj
noremap k gk

:source $VIMRUNTIME/macros/matchit.vim


" プラグイン

call plug#begin()

" highlight
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax',     { 'for': 'css' }
Plug 'othree/html5.vim',           { 'for': 'html' }
Plug 'pangloss/vim-javascript',    { 'for': 'js' }
Plug 'cakebaker/scss-syntax.vim',  { 'for': 'scss' }
Plug 'jwalton512/vim-blade',       { 'for': 'php' }
Plug 'othree/yajs.vim',            { 'for': 'js' }
Plug 'maxmellon/vim-jsx-pretty',   { 'for': 'js' }
Plug 'nikvdp/ejs-syntax',          { 'for': 'ejs' }
Plug 'digitaltoad/vim-pug',        { 'for': 'pug' }
Plug 'leafgarland/typescript-vim', { 'for': 'ts' }
Plug 'tikhomirov/vim-glsl',        { 'for': 'frag' }
Plug 'posva/vim-vue'

" develop
Plug 'itchyny/lightline.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc-around'
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'
Plug 'LumaKernel/ddc-file'
Plug 'godlygeek/tabular'

" github
Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive'

" other
Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-scripts/surround.vim'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/open-browser.vim'
" Plug 'neomake/neomake'
" Plug 'benjie/neomake-local-eslint.vim'
" Plug 'basyura/TweetVim'
" Plug 'basyura/twibill.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mileszs/ack.vim',      { 'on': 'Ack' }
Plug 'thinca/vim-qfreplace', { 'on': 'Qfreplace' }
Plug 'easymotion/vim-easymotion'
Plug 'cohama/lexima.vim'
Plug 'dense-analysis/ale'
" Plug 'mbbill/undotree'
Plug 'simeji/winresizer'

call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""
"ddc.vimの設定
"""""""""""""""""""""""""""""""""""""""""""""""
" Customize global settings
" Use around source.
" https://github.com/Shougo/ddc-around
call ddc#custom#patch_global('sources', ['around', 'file'])

" Use matcher_head and sorter_rank.
" https://github.com/Shougo/ddc-matcher_head
" https://github.com/Shougo/ddc-sorter_rank
call ddc#custom#patch_global('sourceOptions', {
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })

" Change source options
call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ })
call ddc#custom#patch_global('sourceParams', {
      \ 'around': {'maxSize': 500},
      \ })

" Customize settings on a filetype
call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])
call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
      \ 'clangd': {'mark': 'C'},
      \ })
call ddc#custom#patch_filetype('markdown', 'sourceParams', {
      \ 'around': {'maxSize': 100},
      \ })

" Mappings

" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ ddc#map#pum_visible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#map#manual_complete()

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'

" Use ddc.
call ddc#enable()



"""""""""""""""""""""""""""""""""""""""""""""""
"neosnippetの設定
"""""""""""""""""""""""""""""""""""""""""""""""
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
  set conceallevel=0 concealcursor=niv
endif

let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/'



"""""""""""""""""""""""""""""""""""""""""""""""
"Emmet-vimの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key = '<C-E>'
let g:user_emmet_settings = {
      \  'html': {
      \    'default_attributes': {
      \      'source:ts': [{'type': 'image/'}, {'srcset': ''}],
      \      'source:ts:max': [{'type': 'image/'}, {'srcset': ''}, {'media': '(max-width: )'}],
      \      'source:ts:min': [{'type': 'image/'}, {'srcset': ''}, {'media': '(min-width: )'}],
      \      'img:d': [{'src': ''}, {'alt': ''}, {'decoding': 'async'}],
      \    },
      \    'expandos': {
      \      'psi': 'picture>source:ts+img:d',
      \      'psi:max': 'picture>source:ts:max+img:d',
      \      'psi:min': 'picture>source:ts:min+img:d',
      \    },
      \  },
      \  }

" Required:
filetype plugin indent on



"""""""""""""""""""""""""""""""""""""""""""""""
"vim-fugitiveの設定
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Space>gs :Gstatus<CR>
nnoremap <Space>gd :Gdiff<CR>
nnoremap <Space>gb :Gblame<CR>
nnoremap <Space>gr :Gread<CR>
nnoremap <Space>gl :Glog --oneline<CR>



"""""""""""""""""""""""""""""""""""""""""""""""
"lightlineの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'left': [
        \     ['mode', 'paste'],
        \     ['filename', 'fugitive'],
        \   ],
        \   'right': [
        \     ['lineinfo', 'syntastic'],
        \     ['percent'],
        \     ['fileformat', 'fileencoding', 'filetype'],
        \   ]
        \ },
        \ 'component_function': {
        \   'modified': 'MyModified',
        \   'readonly': 'MyReadonly',
        \   'fugitive': 'MyFugitive',
        \   'filename': 'MyFilename',
        \   'fileformat': 'MyFileformat',
        \   'filetype': 'MyFiletype',
        \   'fileencoding': 'MyFileencoding',
        \   'mode': 'MyMode',
        \   'syntastic': 'SyntasticStatuslineFlag',
        \   'charcode': 'MyCharCode',
        \ },
        \ }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &ro ? '' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? substitute(b:vimshell.current_dir,expand('~'),'~','') :
        \ '' != expand('%:s') ? expand('%:s') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  try
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
      let _ = fugitive#head()
      return strlen(_) ? ''._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! MyFileformat()
  return winwidth('.') > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth('.') > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth('.') > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth('.') > 60 ? lightline#mode() : ''
endfunction

" https://github.com/Lokaltog/vim-powerline/blob/develop/autoload/Powerline/Functions.vim
function! MyCharCode()
  if winwidth('.') <= 70
    return ''
  endif

  " Get the output of :ascii
  redir => ascii
  silent! ascii
  redir END

  if match(ascii, 'NUL') != -1
    return 'NUL'
  endif

  " Zero pad hex values
  let nrformat = '0x%02x'

  let encoding = (&fenc == '' ? &enc : &fenc)

  if encoding == 'utf-8'
    " Zero pad with 4 zeroes in unicode files
    let nrformat = '0x%04x'
  endif

  " Get the character and the numeric value from the return value of :ascii
  " This matches the two first pieces of the return value, e.g.
  " "<F>  70" => char: 'F', nr: '70'
  let [str, char, nr; rest] = matchlist(ascii, '\v\<(.{-1,})\>\s*([0-9]+)')

  " Format the numeric value
  let nr = printf(nrformat, nr)

  return "'". char ."' ". nr
endfunction



"""""""""""""""""""""""""""""""""""""""""""""""
"NERDTreeの設定
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-k> :NERDTreeToggle<CR>
" デフォルトでドットファイルを表示
let NERDTreeShowHidden = 1

" ツリーを共有
if argc() == 0
  let g:nerdtree_tabs_open_on_console_startup = 1
end



"""""""""""""""""""""""""""""""""""""""""""""""
" agの設定
"""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  let g:ctrlp_use_caching=0
  let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
endif



"""""""""""""""""""""""""""""""""""""""""""""""
" open-browser.vimの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)



" """""""""""""""""""""""""""""""""""""""""""""""
" " Neomakeの設定
" """""""""""""""""""""""""""""""""""""""""""""""
" autocmd! BufWritePost * Neomake
"
" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_css_enabled_maker = ['stylelint']
" let g:neomake_error_sign = {'text' : '>>', 'texthl' : 'Error'}
" let g:neomake_warning_sign = {'text' : '>>', 'texthl' : 'ToDo'}



"""""""""""""""""""""""""""""""""""""""""""""""
" TweetVimの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:tweetvim_tweet_per_page = 50
let g:tweetvim_include_rts    = 0



"""""""""""""""""""""""""""""""""""""""""""""""
" vim-indent-guidesの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238



"""""""""""""""""""""""""""""""""""""""""""""""
" ack.vimの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:ackprg = 'ag'
let g:ack_default_options = " --case-sensitive --noheading --nopager --nocolor --nogroup --column"



"""""""""""""""""""""""""""""""""""""""""""""""
" ejs-syntaxの設定
"""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.ejs set filetype=ejs
autocmd BufNewFile,BufRead *._ejs set filetype=ejs

function! s:DetectEjs()
    if getline(1) =~ '^#!.*\<ejs\>'
        set filetype=ejs
    endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectEjs()



"""""""""""""""""""""""""""""""""""""""""""""""
" vim-easymotionの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_keys='jklhasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key="'"
let g:EasyMotion_grouping=1
hi EasyMotionTarget ctermbg=none ctermfg=red
nmap s <Plug>(easymotion-overwin-f2)



"""""""""""""""""""""""""""""""""""""""""""""""
" ALEの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \   'sass': ['stylelint'],
      \   'scss': ['stylelint'],
      \   'css': ['stylelint'],
      \}
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_sign_column_always = 1
let g:ale_sign_error = '💥'
let g:ale_sign_warning = '💣'

nmap <silent>, <Plug>(ale_toggle)
nmap <silent> <Space>k <Plug>(ale_previous_wrap)
nmap <silent> <Space>j <Plug>(ale_next_wrap)



"""""""""""""""""""""""""""""""""""""""""""""""
" Undotreeの設定
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <S-u> :UndotreeToggle <cr>

if has("persistent_undo")
    set undodir=~/.undo
    set undofile
endif

command! -nargs=0 ClearUndo call <sid>ClearUndo()
function! s:ClearUndo()
  let old_undolevels = &undolevels
  set undolevels=-1
  exe "normal a \<BS>\<Esc>"
  let &undolevels = old_undolevels
  unlet old_undolevels
endfunction
