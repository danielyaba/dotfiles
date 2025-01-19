# My Dev Environment Files

IMPORTANT: These are primarly meant for inspiration. I wouldn't just blindly use them. Proceed at your own risk!  
This guide explains how to install GNU Stow and use it to manage your dotfiles by creating symlinks in your `$HOME` directory.

---

### Creating symlinks

#### Starship
```bash
mkdir -p ~/.config/starship
ln -s $(pwd)/starship/starship.toml ~/.config/starship/starship.toml
```

#### ZSH
```bash
if [ -f ~/.zshrc ]; then
    rm -f ~/.zshrc
fi
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
```

### NeoVim
```bash
mkdir -p ~/.config/nvim
ln -s $(pwd)/nvim ~/.config/nvim
```

### Alises
```bash
mkdir -p ~/.config/zsh
ln -s $(pwd)/zsh ~/.config/zsh
```

---
