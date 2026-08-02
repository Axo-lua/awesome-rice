# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

alias awconf="nvim $HOME/.dotfiles/awesome/.config/awesome/rc.lua"
alias awtheme="nvim $HOME/.dotfiles/awesome/.config/awesome/theme.lua"
alias piconf="nvim $HOME/.dotfiles/picom/.config/picom/picom.conf"
alias nconf="cd $HOME/.dotfiles/nvim/.config/nvim/"

export EDITOR="nvim"
export XCURSOR_THEME="Bibata-Modern-Classic"
export XCURSOR_PATH="$HOME/.icons"
export XCURSOR_SIZE=16

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}
