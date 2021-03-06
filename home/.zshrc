# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER=`whoami`

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rbenv docker rails bundler colorize common-aliases sublime tmux)

source $ZSH/oh-my-zsh.sh

# load every file in ~/.zsh.d formatted as "SXX_some_task", XX being a number for script ordering
for zshrc_snipplet in ~/.zsh.d/S[0-9][0-9]*[^~] ; do
        source $zshrc_snipplet
done

#Added by Heroku Toolbelt
export PATH="/usr/local/heroku/bin:~/bin/:$PATH"

export VISUAL="vim"
export EDITOR="vim"

# Vi mode
bindkey -v
#emacs mode
#bindkey -e

# remap Escape to jk
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode

# Ctrl-R history incremental search
bindkey '^R' history-incremental-search-backward

# Disable shared history
setopt no_share_history

# Something to do with getting C-s mappable in Vim, and maybe stopping it from
# halting things altogether like this is the 1970s.
# source: http://stackoverflow.com/questions/3446320/in-vim-how-to-map-save-to-ctrl-s
stty -ixon

alias ls='ls -lhG'

eval "$(direnv hook zsh)"
