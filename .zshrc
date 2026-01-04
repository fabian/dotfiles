# {{ ansible_managed }}

export PATH="/opt/homebrew/opt/mariadb@10.11/bin:$PATH"

# Docker CLI completions
FPATH="$HOME/.docker/completions:$FPATH"

# Homebrew completions
autoload -Uz compinit
compinit

# NVM
export NVM_DIR="$HOME/.nvm"
function load_nvm() {
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
}

# zsh-async
source "/opt/homebrew/share/zsh/site-functions/async"

# Initialize worker
async_start_worker nvm_worker -n
async_register_callback nvm_worker load_nvm
async_job nvm_worker sleep 0.1
