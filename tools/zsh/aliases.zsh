#!/bin/zsh
#source $HOME/.dotfiles/shell/.alias.local 2> /dev/null

# directory listings
alias l="exa -s mod -al --git"
alias ll="exa -l -s mod --git --time-style=long-iso"
alias ..="cd .."
alias tree="tree -A"
alias cpwd="pwd|tr -d '\n'|pbcopy"

# function aliases
alias ffe="fzf_find_edit"
alias fcd="fzf_change_dir"
alias fge="fzf_grep_edit"
alias fpk="fzf_proc_kill"
alias fgl="fzf_git_log"
alias change_theme="kitty_change_theme"
alias ytda="ytdl_download_track_audio"

# node/npm/yarn
alias ni="npm install"
alias yd="yarn dev"

# general utilities
# get ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
# get local ip address
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
# recursiely remove Apple meta files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -exec /bin/rm {} \;"

alias vi="nvim"
alias cat="bat"
alias dok="docker"
alias dokc="docker compose"
