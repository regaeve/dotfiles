"## setting ##"

" Vi互換ではなくVimデフォルトに設定
set nocompatible
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

"## 表示 ##"
"シンタックスハイライト
syntax on
"カラースキーム 
colorscheme iceberg
"タイトル表示
set title
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
"set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
"上記の時間「0.? s」
set matchtime=1
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
"長い行も最後まで表示
set display=lastline
"ホップアップメニューの高さ
set pumheight=10 

"## Tab ##
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" ファイル上のTab文字幅
set tabstop=2
" 自動挿入されるインデントのスペース幅
set shiftwidth=2

"## 検索 ##
" インクリメントサーチしない
set noincsearch
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch

"## 操作系 ##
" Backspace拡張
set backspace=2

" ## キーバインド ##
" ESC -> jj
inoremap <silent> jj <ESC>
" 折り返し時に表示行単位での移動できるようにする
"nnoremap j gj
"nnoremap k gk
"マッピングYを行末までヤンク
nnoremap Y y$
" ; -> :
nnoremap ; :
" カーソル移動
nnoremap <S-k> 10<UP>
nnoremap <S-j> 10<DOWN>
nnoremap <S-h> 10<LEFT>
nnoremap <S-l> 10<RIGHT>

vnoremap <S-k> 10<UP>
vnoremap <S-j> 10<DOWN>
vnoremap <S-h> 10<LEFT>
vnoremap <S-l> 10<RIGHT>
" ウィンドウ関連
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

"## その他 ##"
"カーソル回りこみ
"set whichwrap=b,s,[,],<,>

"## プラグイン ##
" NERD Tree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" Airline
let g:airline_theme = 'default'

