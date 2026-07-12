source .antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
antidote load


export PATH=$PATH:/snap/bin

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

