export PATH=$PATH:/usr/local/mysql/binexport PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.1
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

export JAVA_HOME=$(/usr/libexec/java_home)
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#Added by virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

#point to deployment folder
export PSTAT_DEPLOY=~/crypt/deploy

#API token for Hipchat account
export HIPCHAT_AUTH_TOKEN=TxN2ltvJixCuh3Jh1qpQhrIKZ7nJVAqim1P9Ja03

# ----------------------
# ls Aliases
# ----------------------
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.fitvolotd && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some handy aliases
alias sshdata='ssh zhou267@data.cs.purdue.edu'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# some more ls aliases
alias ll='ls -als'
alias la='ls -a'
alias l='ls -cf'

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d '
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gs='git status'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }
export PATH=~/bin:$PATH
