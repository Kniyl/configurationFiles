#
# $HOME/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias mkdir='mkdir -p'
sudo () {
  su -l root -s /bin/bash -c "$*"
}

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

shopt -s autocd

CLEAR='\[\033[0m\]'
DAY='\[\033[35m\]'
HOUR='\[\033[1;34m\]'
WHO='\[\033[32m\]'
FOLDER='\[\033[1;33m\]'
LINE='\[\033[1;34m\]'

PROMPT_COMMAND='NOTE=""; case $((RANDOM%2)) in 1) NOTE+="𝄞";; *) NOTE+="𝄢" ;; esac; for i in `seq 0 $((RANDOM%9+1))`; do case $((RANDOM%10)) in 1) NOTE+="𝅝";; 2) NOTE+="𝅗𝅥";; 3) NOTE+="𝅘𝅥";; 4) NOTE+="𝅘𝅥𝅮";; 5) NOTE+="𝅘𝅥𝅯";; 6) NOTE+="𝅘𝅥𝅰";; 7) NOTE+="𝅘𝅥𝅱";; 8) NOTE+="𝅘𝅥𝅲";; 9) NOTE+="♬";; *) NOTE+="♫";; esac; done'
NOTED='$(echo $NOTE)'
#PS1='[\u@\h \W]${CLEAR}\$ '
PS1="${LINE}┬─${CLEAR}[${DAY}\D{%A %e %B} ${CLEAR}- ${HOUR}\t${CLEAR}]${LINE}──${CLEAR}[${WHO}\u@\h ${FOLDER}\w${CLEAR}]${LINE}──────────◆${CLEAR} ${NOTED}\n${LINE}└─>\$${CLEAR} "
PS2="${LINE}└─>${CLEAR} "
PS3="${LINE}└>${CLEAR} "
PS4="${LINE}+${CLEAR} "
