# My Dev Environment Files

IMPORTANT: These are primarly meant for inspiration. I wouldn't just blindly use them. Proceed at your own risk!  
This guide explains how to install GNU Stow and use it to manage your dotfiles by creating symlinks in your `$HOME` directory.

---

## **Installing GNU Stow**

Follow the instructions based on your operating system:

### **Linux (Ubuntu/Debian)**
```bash
brew install stow
```

## **Using GNU Stow**
1. ##### Clone Your  Dotfiles Repository
Clone your dotfiles repository into a convenient location, such as your `$HOME` directory:
```bash
git clone https://github.com/danielyaba/dev-environment-files.git ~/dotfiles
cd ~/dotfiles
```

2. #### Structure Your Repository
Organize your repository so that each tool or application has its own directory. Inside each directory, include the configuration files with paths mirroring their destination in `$HOME`.

Example structure:
```
dotfiles/
├── zsh/
│   └── .zshrc
├── git/
│   └── .gitconfig
└── nvim/
    └── init.vim
```

3. #### Stow a Single Configuration
symlink configuration files for a single tool (e.g., `zsh`):

```bash
stow zsh
```

This will create symlinks for the files in the zsh/ directory into your `$HOME` directory (e.g., `~/.zshrc`).

