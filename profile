export XDG_CONFIG_HOME="$HOME/.config"

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

#export MOZ_ENABLE_WAYLAND=1
#export GDK_BACKEND=wayland
#export CLUTTER_BACKEND=wayland
#export SDL_VIDEODRIVER=wayland
export CARGO_HOME="$HOME/.local/share/cargo"

setxkbmap -option caps:escape
. "$HOME/.cargo/env"
. "/home/jarkko/.local/share/cargo/env"
