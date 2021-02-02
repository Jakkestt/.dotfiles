setopt autocd
bindkey -v

autoload colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%c%{$fg[red]%}]%{$reset_color%}$%b "

alias python=python3
alias pip='python3 -m pip'
alias vim=nvim

export PATH="/Users/jakkest/Library/Python/3.8/bin:/usr/local/opt/openjdk@11/bin:$PATH"

source ~/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
