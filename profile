export XDG_CONFIG_HOME="$HOME/.config"

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

export PATH="$HOME/.local/bin:$PATH"

#export MOZ_ENABLE_WAYLAND=1
#export GDK_BACKEND=wayland
#export CLUTTER_BACKEND=wayland
#export SDL_VIDEODRIVER=wayland

setxkbmap -option caps:escape

. "$HOME/.cargo/env"
