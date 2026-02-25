# {{ ansible_managed }}

# Ensure shared profile settings are loaded in interactive non-login shells.
if [ -r "$HOME/.zprofile" ]; then
    source "$HOME/.zprofile"
fi

export PATH="/opt/homebrew/opt/mariadb@10.11/bin:$PATH"

# Docker CLI completions
FPATH="$HOME/.docker/completions:$FPATH"

# Homebrew completions
autoload -Uz compinit
compinit
