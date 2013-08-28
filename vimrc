set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set number

" Fix <A-.>
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=10

imap ., <ESC>
vmap ., <ESC>
source ~/.config/configurationFiles/vimrc.bepo
