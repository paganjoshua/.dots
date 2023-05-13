# If not running interactively, don't do anything
[[  $- != *i* ]] && return

# Source Aliases
if [[ -s ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

# Source Functions
if [[ -d ~/.bash_functions ]]; then
  for func in ~/.bash_functions/*; do
    source $func
  done
fi

# Set Prompt
# PS1='[\u@\h \W]\$ '
# putting aside hostname for now
# \[$(tput setaf 6)\]\h \
PS1="\
\[$(tput setaf 3)\][\
\[$(tput setaf 5)\]\u\
\[$(tput setaf 3)\]@\
\[$(tput setaf 6)\]\W\
\[$(tput setaf 4)\]] >\
\[$(tput sgr0)\] "

# Hands to Quarterdeck
cd $QUARTERDECK
