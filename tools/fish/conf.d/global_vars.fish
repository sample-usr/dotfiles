set -gx LC_ALL=en_US.UTF-8
set -gx EDITOR=nvim

# make sure we have XDG spec set
set -gx XDG_CONFIG_HOME=$HOME/.config
set -gx XDG_DATA_HOME=$HOME/.local/share
set -gx XDG_CACHE_HOME=$HOME/.cache

# fzf config options
set -gx FZF_DEFAULT_OPTS="--height=60% --preview-window=right:60%:wrap"
set -gx FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
set -gx FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
set -gx FZF_ALT_C_COMMAND="fd --type d . --color=never"
set -gx FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :500 {}'"
set -gx FZF_ALT_C_OPTS="--preview 'tree -C {} | head -100'"

# asdf config options
set -gx ASDF_CONFIG_FILE=$XDG_CONFIG_HOME/asdf/.asdfrc
set -gx ASDF_DATA_DIR=$XDG_DATA_HOME/asdf
set -gx FLUTTER_ROOT=$XDG_DATA_HOME/asdf/installs/flutter/2.0.4-stable
set -gx NODEJS_CHECK_SIGNATURES=no

# docker config options
set -gx DOCKER_CONFIG=$XDG_CONFIG_HOME/docker 
set -gx DOCKER_VOLUMES_DIR=$XDG_DATA_HOME/docker/volumes

# bundler config
set -gx BUNDLE_USER_HOME=$XDG_CONFIG_HOME/bundle
set -gx BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundle

# zsh
set -gx ZSH_AUTOSUGGEST_USE_ASYNC=true

# gnupg
set -gx GNUPGHOME=${XDG_CONFIG_HOME}/gnupg

# bat
set -gx BAT_THEME="base16"
