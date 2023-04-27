if [ -f /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh ]; then
  source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
fi

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

_br=`hg branch 2> /dev/null`
export hg_branch="($_br)"

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

PS1="\[$(tput bold)\]\[$(tput setaf $BRACKETCOLOR)\][\[$(tput setaf $UHCOLOR)\]\u@\h \[$(tput setaf 2)\]\w \[$(tput setaf 6)\]\$hg_branch\$git_branch\[$(tput setaf $BRACKETCOLOR)\]]\\$ \[$(tput sgr0)\]"
export PS1 

export GITHUB_TOKEN=c31c0245b87532e10f621f1e6bc921b67976bee2

export CARINA_USERNAME=mistermocha@gmail.com
export CARINA_APIKEY=6e1c6584d3ba4eb29c30951b78ba571f

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
alias apython='/Users/brianweber/anaconda2/bin/python'
alias jupyter='/Users/brianweber/anaconda2/bin/jupyter'
#alias tmux="TERM=screen-256color-bce tmux"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
