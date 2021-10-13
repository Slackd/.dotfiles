# Alias's for multiple directory listing commands
alias la='exa --icons --long --all --header --git' # show hidden files
alias ll='exa --long --icons --header --git' # long listing format

# Specific to me, for this system
alias c='clear'
alias x='exit'
alias cdK='cd /home/sam/Kernel'
alias reload='source ~/.zshrc'
alias eV='nvim ~/.config/nvim/init.lua'
alias eB='nvim ~/.bashrc'
alias eX='nvim ~/.Xresources'
alias eZ='nvim ~/.zshrc'
alias e='nvim'
alias vim='nvim'
alias cdD='cd ~/Development'

# Starwars in terminal
alias starwars='telnet towel.blinkenlights.nl'

# Download Alias
alias dload='aria2c -c -j16 -x16 -s16'

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
