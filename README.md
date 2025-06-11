## terminal conf

- JetBrainsMono 
```
curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/JetBrainsMono/Ligatures/Regular/JetBrainsMonoNerdFont-Regular.ttf
```

- IosevkaTerm
```
curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/IosevkaTerm/IosevkaTermNerdFont-Regular.ttf
```

- Iosevka
```
curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/patched-fonts/Iosevka/IosevkaNerdFont-Regular.ttf
```

- command line tools
```
pacman -S man bat ufw llvm clang gdb neovim git tmux zsh github-cli fzf ripgrep make
```

## git conf

```
git config --global user.name "<username>"
git config --global user.email "<email>"
git config --global init.defaultBranch "master"
```

## configuration file

```
git clone https://github.com/ridwanalmahmud/.config.git
```

## zsh conf

- oh my zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- .zshrc
```
echo -e "for file in ~/.config/zsh/*.zsh
do
  source "\$file"
done" > ~/.zshrc
```
