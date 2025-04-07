# {{ ansible_managed }}

eval "$(/opt/homebrew/bin/brew shellenv)"

export JAVA_HOME="$(/usr/libexec/java_home --version 1.8)"

# Added by Toolbox App
export PATH="$PATH:/Users/fabian/Library/Application Support/JetBrains/Toolbox/scripts"
