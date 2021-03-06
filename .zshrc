setopt promptsubst
autoload -U promptinit
promptinit
prompt wunjo

export CLICOLOR=1;

export HISTFILE=$HOME/.history
export HISTSIZE=99999
export SAVEHIST=99999

setopt hist_ignore_dups  # ignore duplication command history list
setopt share_history     # share command history data

setopt hist_verify
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space

setopt SHARE_HISTORY
setopt APPEND_HISTORY

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

export PGDATA='/usr/local/var/postgres/'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias ls='ls -F'
alias la='ls -F -A'
alias ll='ls -F -A -o -h'
alias top='top -o cpu -s 2 -i 2'
alias pg='ps aux | grep'

alias gs='git status'
alias ga='git add'
alias gpl='git pull --rebase'
alias gps='git push'
alias gl='git lg'
alias gla='git lga'
alias gg='git add -u && git add . && git status'
alias gm='git commit -m'
alias gb='git branch'
alias gd='git diff head'
alias gc='git checkout'
alias gf='git flow'
alias gh='github'
alias gr='git reset'
alias lg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

alias mm='middleman'
alias st='subl'

alias bndl='bundle install --binstubs && rbenv rehash'

alias rs='rails server'
alias rc='rails console'
alias rg='rails generate'
alias rr='rails runner'

alias bu="brew update && brew outdated"

alias check='openssl sha1 -c'

alias hg='cat ~/.history | grep'

alias ytf='youtube-dl -F'
alias ytd='youtube-dl -f'
alias yt='youtube-dl -f 22'

alias befs='bundle exec foreman start'

# Kill processes on a port (killit 3000)
killit() {
  lsof -i :$1 | grep LISTEN | awk '{print $2}' | xargs kill
}

# Case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Set $PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=./bin:$PATH

export RBENV_ROOT=/usr/local/opt/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
