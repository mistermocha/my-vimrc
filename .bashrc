if [ -z "$SSH_AGENT_PID" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

OS=`uname`
if [ $OS = "Linux" ]; then
  BRACKETCOLOR=2
  UHCOLOR=3
  LSFLAGS='--color=auto'
elif [ $OS = "Darwin" ]; then
  BRACKETCOLOR=4
  UHCOLOR=5
  LSFLAGS='-G'
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# gopath
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin
export PKG_CONFIG_PATH=/System/Library/Frameworks/Python.framework/Versions/2.7/lib/pkgconfig/

alias ls="ls $LSFLAGS"
alias g='git'
alias gbr='git branch'
alias gnb='git checkout -b'
alias grb='git fetch && git rebase master'
alias gf='git fetch'
alias gco='git checkout'
#alias tmux="TERM=screen-256color-bce tmux"

alias k="kubectl"
alias kg="kubectl get"
alias ky="kubectl get -o yaml"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
