if [ -f /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh ]; then
  source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
fi

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

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

PS1="\[$(tput bold)\]\[$(tput setaf $BRACKETCOLOR)\][\[$(tput setaf $UHCOLOR)\]\u@\h \[$(tput setaf 2)\]\w \[$(tput setaf 6)\]\$git_branch\[$(tput setaf $BRACKETCOLOR)\]]\\$ \[$(tput sgr0)\]"
export PS1 

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
alias grb='git pull --rebase'
alias gf='git fetch'
alias gco='git checkout'
#alias tmux="TERM=screen-256color-bce tmux"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
