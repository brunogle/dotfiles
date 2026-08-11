# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# .zshrc
function hss-bindkey() {
  zmodload zsh/terminfo
  local keymap
  for keymap in 'main' 'emacs' 'viins'; do
    bindkey -M "$keymap" "$terminfo[kcuu1]" history-substring-search-up
    bindkey -M "$keymap" "$terminfo[kcud1]" history-substring-search-down
  done
}


source ~/.antidote/antidote.zsh



# initialize plugins statically with ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
antidote load


export PATH=$PATH:/snap/bin

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
