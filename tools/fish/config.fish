if status --is-interactive
  eval (/opt/homebrew/bin/brew shellenv)
end

set -gx LC_ALL en_US.UTF-8
set -gx EDITOR nvim

# make sure we have XDG spec set
set -gx XDG_CONFIG_HOME ~/.config
set -gx XDG_DATA_HOME ~/.local/share
set -gx XDG_CACHE_HOME ~/.cache

# npm config
#set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/config
#set -gx NPM_CONFIG_CACHE $XDG_CACHE_HOME/npm

# fzf config options
set -gx FZF_DEFAULT_OPTS "--height=60% --preview-window=right:60%:wrap"
set -gx FZF_DEFAULT_COMMAND "rg --files --hidden --follow"
set -gx FZF_CTRL_T_COMMAND "rg --files --hidden --follow"
set -gx FZF_ALT_C_COMMAND "fd --type d . --color=never"
set -gx FZF_CTRL_T_OPTS "--preview 'bat --color=always --line-range :500 {}'"
set -gx FZF_ALT_C_OPTS "--preview 'tree -C {} | head -100'"

# asdf config options
set -gx ASDF_CONFIG_FILE ~/.config/asdf/.asdfrc
set -gx ASDF_DATA_DIR ~/.local/share/asdf
set -gx NODEJS_CHECK_SIGNATURES no

# docker config options
set -gx DOCKER_CONFIG ~/.config/docker 
set -gx DOCKER_VOLUMES_DIR ~/.local/share/docker/volumes

# bundler config
set -gx BUNDLE_USER_HOME ~/.config/bundle
set -gx BUNDLE_USER_CACHE ~/.cache/bundle

# gnupg
#set -gx GNUPGHOME ~/.config/gnupg

# bat
set -gx BAT_THEME "gruvbox-dark"

# dotnet-core
set -gx DOTNET_ROOT $(asdf where dotnet-core)
set -gx MSBuildSDKsPath $DOTNET_ROOT/sdk/$(basename $DOTNET_ROOT)/Sdks
set -gx DOTNET_MSBUILD_SDK_RESOLVER_SDKS_VER $(basename $DOTNET_ROOT)
set -gx DOTNET_MSBUILD_SDK_RESOLVER_SDKS_DIR $DOTNET_ROOT/sdk/$DOTNET_MSBUILD_SDK_RESOLVER_SDKS_VER/Sdks
set -gx DOTNET_MSBUILD_SDK_RESOLVER_CLI_DIR $DOTNET_ROOT

source /opt/homebrew/opt/asdf/libexec/asdf.fish

# kafka
set -gx CPPFLAGS -I/usr/local/opt/openssl/include
set -gx LDFLAGS  -L/usr/local/opt/openssl/lib

# directory listings
alias l="exa -s mod -al --git"
alias ll="exa -l -s mod --git --time-style=long-iso"
alias ..="cd .."
alias tree="tree -A"
alias cpwd="pwd|tr -d '\n'|pbcopy"

# function aliases
alias ffe="fzf_find_edit"
alias fge="fzf_grep_edit"
alias fcd="fzf_change_dir"
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

# set DOTNET_ROOT
. $ASDF_DATA_DIR/plugins/dotnet-core/set-dotnet-home.fish

fish_ssh_agent
starship init fish | source
direnv hook fish | source

