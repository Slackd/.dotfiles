# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Technicolor dreams
force_color_prompt=yes
color_prompt=yes

# Simple prompt with path in the window/pane title and carat for typing line
PS1=$'\uf0a9 '
PS1="\[\e]0;\w\a\]$PS1"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
alias c='clear'
alias x='exit'
alias dnfu='sudo dnf up --refresh'
alias init3='sudo systemctl set-default multi-user.target'
alias init5='sudo systemctl set-default graphical.target'
alias reload='source ~/.zshrc'
alias dload='aria2c -x16 -j16 -s16 -c'
alias init3='sudo systemctl set-default multi-user.target'
alias init5='sudo systemctl set-default graphical.target'
alias dnfu='sudo dnf up --refresh'
alias pacup='sudo pacman -Syu'
alias vim='nvim'
alias cpumon='watch cat /sys/devices/system/cpu/cpu[0-9]*/cpufreq/scaling_cur_freq'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias tmux='tmux -u'

