#!/bin/zsh

PS1="%{%F{4}%}%?%{%F{7}%}:%{%F{7}%}%n%{%F{6}%}@%{%F{2}%}%m %{%F{4}%}%1~ %{%F{6}%}>> %{%F{0}%}"

# Preview: code:user@hostname ~ >> 
# Colors order: Blue, white, white, cyan, green, blue, cyan, no color.

# Plugins comment if you dont use them '#'
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh >/dev/null 2>&1
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh >/dev/null 2>&1

export EDITOR=nvim # change if needed
export BROWSER=firefox # same here
export PATH=$PATH:/usr/local/bin # same here

# For basic filesystem utilities
alias tf="touch -f"
alias grep="grep --color=auto"
alias ls="ls -F --color=auto"
alias ll="ls -lhF --color=auto"
alias l="ls --color=auto -lFh"
alias la="ls -lahF --color=auto"
alias ..="cd .."
alias ...="cd ../.."
alias rd="rmdir"
alias rmit="rm -rf"
alias md="mkdir -p"
alias du="du -h"
alias free="free -h"
alias top="top -s"
alias egrep="grep --color=auto"
alias fgrep="grep --color=auto"
alias dir="dir --color=auto"
alias rd="rmdir"
alias rmf="rm -rf"
alias df="df -h"
alias lsblk="lsblk -o NAME,MAJ:MIN,RM,SIZE,RO,TYPE,MOUNTPOINTS,LABEL,FSTYPE"
alias vdir="vdir --color=auto"

# For basic zip/tar
alias tar="tar -cvf"
alias untar="tar -xvf"
alias zip-dir="zip -r"
alias zap="zip -0 -r"
alias szip="zip -9 -r"

# For crypto sums
alias sha256="sha256sum"
alias sha512="sha512sum"
alias sha1="sha1sum"
alias sha224="sha224sum"
alias sha3="sha3sum"
alias sha384="sha384sum"
alias ck="cksum"
alias md5="md5sum"
alias xxh="xxhsum"
alias xxh3="xxh3sum"
alias xxh32="xxh32sum"
alias xxh64="xxh64sum"
alias xxh128="xxh128sum"

# For encode
alias b32="base32"
alias b64="base64"

# For archnon project(https://github.com/strxint/archnon-scripts)
alias torrc="uranus -p torrc"
alias dnsc="neptune --set-dns"
alias myip="archnon --myip"
alias changeid="archnon --changeid"
alias tor-start="archnon --start"
alias tor-stop="archnon --stop"
alias tor-enable="archnon --enable"
alias tor-disable="archnon --disable"
alias tor-restart="archnon --restart"

# For shorter network commands
alias a="ip a"
alias router="arp -a"
alias p="ss -tulnap"

# For python
alias py="python"
alias py2="python2"
alias py3="python3"

# For shorter commands
alias g="git"
alias c="clear"
alias r="reset"
alias i="whoami"

# For common typos
alias gut="git"
alias sl="ls -F --color=auto"
alias cd..="cd .."

# For short
alias vi="$EDITOR"
alias vim="$EDITOR"

# For shorter browser, handles dynamic from reading the variable.

if command -v sudo >/dev/null 2>&1; then
    alias browser="sudo -u $USER $BROWSER >/dev/null 2>&1 &"
elif command -v doas >/dev/null 2>&1; then
    alias browser="doas -u $USER $BROWSER >/dev/null 2>&1 &"
else
    alias browser="$BROWSER &"
fi
