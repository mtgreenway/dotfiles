call pathogen#infect()
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
set hlsearch
set autoindent

if has("syntax")
  syntax on
endif

autocmd BufNewFile *.py 0r ~/.vitemplates/apache-py.txt
autocmd BufNewFile *.js 0r ~/.vitemplates/apache-js.txt
autocmd BufNewFile *.h 0r ~/.vitemplates/apache-c.txt
autocmd BufNewFile *.cpp 0r ~/.vitemplates/apache-c.txt
autocmd BufNewFile *.c 0r ~/.vitemplates/apache-c.txt
autocmd BufNewFile * execute "normal Go"


func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

func! TranslateTabs()
  exe "normal mz"
  %s/\t/        /ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call TranslateTabs()

nmap ; :setlocal number!<CR>
nmap <Tab> :set noautoindent!<CR>
nmap <F5> :!source .venv/bin/activate;tools/run_tests.sh<CR>

"set background=dark

