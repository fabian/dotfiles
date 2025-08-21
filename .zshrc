# {{ ansible_managed }}

export PATH="/opt/homebrew/opt/mariadb@10.11/bin:$PATH"

# Homebrew completions
autoload -Uz compinit
compinit

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Docker CLI completions
FPATH="$HOME/.docker/completions:$FPATH"
autoload -Uz compinit
compinit

