# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias awconf="nvim $HOME/.dots/awesome/.config/awesome/rc.lua"
alias awtheme="nvim $HOME/.dots/awesome/.config/awesome/theme.lua"
alias piconf="nvim $HOME/.dots/picom/.config/picom/picom.conf"
alias nconf="yazi $HOME/.dots/nvim/.config/nvim/"

export EDITOR="nvim"
export XCURSOR_THEME="Bibata-Modern-Classic"
export XCURSOR_PATH="$HOME/.dots/awesome/.config/awesome/cursor/"
export XCURSOR_SIZE=16

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}
. "$HOME/.cargo/env"

# Created by `pipx` on 2026-08-13 14:40:53
export PATH="$PATH:/home/axo/.local/bin"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

