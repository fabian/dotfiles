# dotfiles

## Installation

1. Install [Homebrew](http://brew.sh) with the instructions from their website
2. Run `brew install ansible`
3. Run `git clone https://github.com/fabian/dotfiles.git ~/.dotfiles`
4. Run `cd ~/.dotfiles`
5. Run `cp host_vars/localhost.yml.dist host_vars/localhost.yml`
6. Adjust variables in `host_vars/localhost.yml`
7. Run `ansible-playbook site.yml --diff --ask-become-pass`

## Tips

To quickly apply configuration changes run `ansible-playbook site.yml --tags=configuration --diff --ask-become-pass`.

