:syntax on

" 折り返し
set wrap

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

" autocmd ColorScheme * highlight Normal ctermbg=none ctermfg=254
" autocmd ColorScheme * highlight NonText ctermbg=none
" autocmd ColorScheme * highlight LineNr ctermbg=none
" autocmd ColorScheme * highlight SpecialKey ctermbg=none
" autocmd ColorScheme * highlight Visual ctermbg=239
" autocmd ColorScheme * highlight EndOfBuffer ctermbg=none
" autocmd ColorScheme * highlight CursorLine ctermbg=236
" colorscheme cosme

autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html

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

" 文字エンコード
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix,dos,mac

set visualbell t_vb =
set noerrorbells

au BufRead,BufNewFile *.scss set filetype=sass

" キーマッピング
" inoremap{<Enter> {}<LEFT><CR><ESC><S-o>
" inoremap[<Enter> []<LEFT><CR><ESC><S-o>
" inoremap(<Enter> ()<LEFT><CR><ESC><S-o>
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

" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

  if has('vim_starting')
     if &compatible
          set nocompatible               " Be iMproved
     endif

     " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" プラグイン
" highlight
NeoBundle 'mattn/emmet-vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'jwalton512/vim-blade'
NeoBundle 'othree/yajs.vim'
NeoBundle 'maxmellon/vim-jsx-pretty'

" develop
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

" github
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'

" other
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'surround.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'rking/ag.vim'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'open-browser.vim'
NeoBundle 'neomake/neomake'
NeoBundle 'benjie/neomake-local-eslint.vim'
NeoBundle 'basyura/TweetVim'
NeoBundle 'basyura/twibill.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'thinca/vim-qfreplace'
NeoBundle 'cohama/lexima.vim'

call neobundle#end()


"""""""""""""""""""""""""""""""""""""""""""""""
"neocompleteの設定
"""""""""""""""""""""""""""""""""""""""""""""""
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'



"""""""""""""""""""""""""""""""""""""""""""""""
"Emmet-vimの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key = '<C-E>'

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

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck



"""""""""""""""""""""""""""""""""""""""""""""""
" open-browser.vimの設定
"""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)



"""""""""""""""""""""""""""""""""""""""""""""""
" Neomakeの設定
"""""""""""""""""""""""""""""""""""""""""""""""
autocmd! BufWritePost * Neomake

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_css_enabled_maker = ['stylelint']
let g:neomake_error_sign = {'text' : '>>', 'texthl' : 'Error'}
let g:neomake_warning_sign = {'text' : '>>', 'texthl' : 'ToDo'}



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
let g:ackprg = 'ag --nogroup --nocolor --column'
