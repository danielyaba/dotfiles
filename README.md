# My Dev Environment Files

IMPORTANT: These are primarly meant for inspiration. I wouldn't just blindly use them. Proceed at your own risk!  
This guide explains how to install GNU Stow and use it to manage your dotfiles by creating symlinks in your `$HOME` directory.

---

## **Installing GNU Stow**

Follow the instructions based on your operating system:

#### **MacOS**

```bash
brew install stow
```

#### **Linux (Ubuntu/Debian)**

```
suto apt-get install stow
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

4. #### Stow All Configurations
To symlink all configurations at once:
```bash
stow */
```

5. #### Unstow (Remove Symlinks)
To remove symlinks created by stow for a specific configuration:

```bash
stow -D zsh
```

To remove all symlinks:

```bash
stow -D */
```

## Best Practices

* ##### Backup existing Files:
Before running stow, ensure no conflicting files already exist in your `$HOME` directory.   
Backup or delete them if needed. For example:

```
mv ~/.zshrc ~/.zshrc.bak
```

* #### Ignore Files:
To skip specific files or directories during the stowing process, create a `.stow-global-ignore` file in your repository. For example:

```
README.md
.gitignore
```

* #### Preview Changes
Use the `--simulate` flag to preview the symlinks that will be created:
```bash
stow --simulate zsh
```


## Troubleshooting

*  **Premissions Errors:** Ensure you have write permissions to your `$HOME` directory.

*  **Incorrect Symlinks:** Verify that the directory structure within each subdirectory mirrors the intended paths in `$HOME`.

*  **Conflicting Files:** If `stow` cannot create a symlink because a file already exists, back up or remove the conflicting file.

---
