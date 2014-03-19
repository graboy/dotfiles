
autoload -U colors 
colors

# zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/grayson/.zshrc'

[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh

bindkey -v

autoload -Uz compinit
compinit

autoload -U promptinit
promptinit

autoload zkbd
source ~/.zkbd/rxvt-unicode-256color-:0

[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" history-beginning-search-backward
[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" history-beginning-search-forward
[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char


man() {
env LESS_TERMCAP_mb=$'\E[01;31m' \
LESS_TERMCAP_md=$'\E[38;5;2m' \
LESS_TERMCAP_me=$'\E[0m' \
LESS_TERMCAP_se=$'\E[0m' \
LESS_TERMCAP_so=$'\E[38;5;3m' \
LESS_TERMCAP_ue=$'\E[0m' \
LESS_TERMCAP_us=$'\E[38;5;6m' \
man "$@"
}

alias ls='ls --color'
alias dir="dir --color=auto"
alias dmesg='dmesg --color'
alias diff='colordiff'
alias grep='grep --color=auto'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias rm=' timeout 3 rm -Iv --one-file-system'
alias clear=' echo -ne "\033c"'
alias cls='clear'

PS1="%{$fg_bold[cyan]%}>>>%{$reset_color%} "
RPS1="%{$fg[blue]%}%~%{$reset_color%}%(?.. %{$fg_bold[red]%}(%?%)%{$reset_color%})"
PS2="%{$fg_bold[cyan]%}...%{$reset_color%} "
RPS2="%{$fg_bold[black]%}(%_)%{$reset_color%}"
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt HIST_IGNORE_DUPS
unsetopt beep
# End of lines configured by zsh-newuser-install
