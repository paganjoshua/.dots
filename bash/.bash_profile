#
# ~/.bash_profile
#

# Quarterdeck
export QUARTERDECK=$HOME/quarterdeck

# Editors
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/nvim;
# DIFFPROG overrides the default "vim -d" merge program in 'pacdiff'
export DIFFPROG="/usr/bin/nvim -d"

# Golang
export GOPATH=$HOME/.local/share/go
export GOBIN=$GOPATH/bin
PATH+=:$GOBIN

# FoundryVTT
export FOUNDRYVTT_PATH=$HOME/.local/share/foundryvtt
PATH+=:$FOUNDRYVTT_PATH

export PATH

# Source bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Fetch
neofetch
