# ZSH

## 1) Install Requirements
Install `git`, `zsh`, `antidote`, `stow` with:
```bash
sudo apt install git zsh stow
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote
```

## 2) Clone dotfiles repo
Clone this repo with:
```
git clone https://github.com/brunogle/dotfiles.git ~/dotfiles
```

## 3) Install dotfiles

Install zsh dotfiles with:
```
cd ~/dotfiles
stow zsh
```

## 4) Test with
```
zsh
```

## 5) Make zsh default shell with:
```
chsh -s $(which zsh)
```

## 6) Optional: Move hostname to the left with: 

```
sed -i -E 's/(typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=\([^)]*)context([^)]*\))/\1\2/' ~/.p10k.zsh && \
sed -i -E 's/(typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=\()/\1context /' ~/.p10k.zsh && \
sed -i 's/^[[:space:]]*context[[:space:]]*#[[:space:]]*user@hostname.*/  # context/' ~/.p10k.zsh && exec zsh
exec zsh
```
