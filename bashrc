# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
   # Shell is non-interactive.  Be done now!
   return
fi

####################################
## Colors
####################################
RS="\[\033[0m\]"     # reset
HC="\[\033[1m\]"     # hicolor
UL="\[\033[4m\]"     # underline
INV="\[\033[7m\]"    # invert foreground and background
FBLK="\[\033[30m\]"
FRED="\[\033[31m\]"
FGRN="\[\033[32m\]"
FYEL="\[\033[33m\]"
FBLE="\[\033[34m\]"
FMAG="\[\033[35m\]"
FCYN="\[\033[36m\]"
FWHT="\[\033[37m\]"
BBLK="\[\033[40m\]"
BRED="\[\033[41m\]"
BGRN="\[\033[42m\]"
BYEL="\[\033[43m\]"
BBLE="\[\033[44m\]"
BMAG="\[\033[45m\]"
BCYN="\[\033[46m\]"
BWHT="\[\033[47m\]"

hn=$(hostname)
eval `dircolors ~/.dir_colors`

alias colors='for i in {0..255} ; do     printf "\x1b[38;5;${i}mcolour${i}\n"; done'

export EDITOR=/usr/bin/vim

####################################
## Thinkpad
####################################
if [ "$hn" == "dk-thinkpad" ]; then

   export PATH=$PATH:/opt/android-sdk/tools
   export PATH=$PATH:/opt/android-sdk/platform-tools
   export PATH=$PATH:/opt/android-ndk
   export PATH=/home/devin/bin:$PATH

   # GNU Radio
   export PYTHONPATH=/usr/local/lib/python2.7/site-packages
   export LD_LIBRARY_PATH=/usr/local/lib

   alias rpi="mosh pi@dk-pi"
   alias open="xdg-open"
   alias ls="ls --color=auto"
   alias grep="grep --color=auto"
   alias='ag --color-path "1;32" --color-match "1;30" --color-line-number "2;33" '

   export REPLYTO=dwwkelly@fastmail.fm
   export CHROMIUM_FLAGS='--cipher-suite-blacklist=0x0001,0x0002,0x0004,0x0005,0x0017,0x0018,0xc002,0xc007,0xc00c,0xc011,0xc016,0xff80,0xff81,0xff82,0xff83'

fi

if [ -e ~/.privaterc ]; then
   source ~/.privaterc
fi

test /usr/bin/xmodmap
if [ "$?" == 0 ]; then
   xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
else
   echo "not mapping caps lock to escape"
fi


####################################
## Aliases
####################################

alias ssh='ssh -q'
alias size="du -H --max-depth=1 . | sort -n -r"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias knewtab="konsole --new-tab"
alias ls="ls --color=auto"

#######################################
## History
#######################################

# append to the history file, don't overwrite it
shopt -s histappend
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s checkwinsize

#######################################
## Misc
#######################################

set -o vi

export EXINIT='set autoindent'
export PAGER=less

export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
source ~/.git-completion

export TERM=screen-256color
export PS1="[$FRED\h $FGRN\u$RS $FBLE\W$RS]\$(__git_ps1 ' [\[\e[34;1m\]%s\[\e[0m\]]')\$ "

# maybe remove?
keychain ~/.ssh/id_rsa
. ~/.keychain/$HOSTNAME-sh 2> /dev/null
. ~/.keychain/$HOSTNAME-sh-gpg 2> /dev/null
