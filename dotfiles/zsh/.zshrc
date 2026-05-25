# Prompt
autoload -Uz colors && colors

PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# Completion
autoload -Uz compinit
compinit

# Navigation
setopt AUTO_CD

# Safer shell
setopt INTERACTIVE_COMMENTS

# Aliases
alias ll='ls -lah'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias v='nvim'
alias c='clear'
alias rebuild='source ~/.zshrc'
alias ls='eza'
alias cat='bat'

# Editor
export EDITOR=nvim

# Better terminal
export TERM=xterm-256color

eval "$(zoxide init zsh)"
