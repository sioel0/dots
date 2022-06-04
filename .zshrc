# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /home/sioel0/.antigen.zsh

antigen init ~/.antigenrc
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export MOZ_ENABLE_WAYLAND=1

# env variables
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export TERM="xterm"
export PATH="$PATH:/home/sioel0/.bin:/home/sioel0/.local/bin:/home/sioel0/.scripts"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# history timestamp format
HIST_STAMPS="yyyy-mm-dd"

# oh-my-zsh plugins
plugins=(git colored-man-pages colorize command-not-found cp extract)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='nvim'

# aliases
alias p='sudo pacman'
alias v='nvim'
alias sv='sudo nvim'
alias sctl='sudo systemctl'
alias ll='ls -l'
alias la='ls -la'
alias ssh='ssh -X'
alias gdb='gdb -q'

# git aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gch='git checkout'
alias gi='git init'
alias gm='git merge'
alias gps='git push'
alias gpl='git pull'
alias gr='git restore'
alias gs='git status'
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
