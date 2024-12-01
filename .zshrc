# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Fix insecure warning
ZSH_DISABLE_COMPFIX=true

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  terraform
  web-search
  copyfile
  copypath
  gcloud
  sudo
  python-venv-activator
)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### Useful aliases ###
alias ll='ls -lha'
alias install='brew install'
alias uninstall='brew uninstall'
alias refresh='source ~/.zshrc'
alias cat='bat --paging never --theme DarkNeon'
alias ls='eza -l --icons=always'
alias edit-zsh='nvim ~/.zshrc'

### K8s aliases ###
alias k='HTTPS_PROXY=localhost:8888 kubectl'
alias kg='HTTPS_PROXY=localhost:8888 kubectl get'
alias kd='HTTPS_PROXY=localhost:8888 kubectl describe'
alias kl='HTTPS_PROXY=localhost:8888 kubectl logs -f'
alias kl1='HTTPS_PROXY=localhost:8888 kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 1p)'
alias kl2='HTTPS_PROXY=localhost:8888 kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 2p)'
alias ka='HTTPS_PROXY=localhost:8888 kubectl apply -f'
alias kr='HTTPS_PROXY=localhost:8888 kubectl run'
alias ke='kuectl exec -it'
alias kgp='HTTPS_PROXY=localhost:8888 kubectl get pods'
alias kdp='HTTPS_PROXY=localhost:8888 kubectl describe pods'
alias kdp1='HTTPS_PROXY=localhost:8888 kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 1p)'
alias kdp2='HTTPS_PROXY=localhost:8888 kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 2p)'
alias kdel='HTTPS_PROXY=localhost:8888 kubectl delete pod'
alias kgs='HTTPS_PROXY=localhost:8888 kubectl get secrets'
alias kds='HTTPS_PROXY=localhost:8888 kubectl describe secrets'
alias kgi='HTTPS_PROXY=localhost:8888 kubectl get ingress'
alias kdi='HTTPS_PROXY=localhost:8888 kubectl describe ingress'
alias kgsvc='HTTPS_PROXY=localhost:8888 kubectl get svc'
alias kgcm='HTTPS_PROXY=localhost:8888 kubectl get configmap'
alias kubens='HTTPS_PROXY=localhost:8888 kubens'
alias kubectl='HTTPS_PROXY=localhost:8888 kubectl'
alias kns='HTTPS_PROXY=localhost:8888 kubens'
alias kcx='HTTPS_PROXY=localhost:8888 kubectx'
alias k9s='HTTPS_PROXY=localhost:8888 k9s'

### HTTP_PROXY=localhost:8888 helm aliases ###
alias helm='HTTPS_PROXY=localhost:8888 helm'
alias h='HTTPS_PROXY=localhost:8888 helm'
alias hi='HTTPS_PROXY=localhost:8888 helm install'
alias hu='HTTPS_PROXY=localhost:8888 helm upgrade'
alias hl='HTTPS_PROXY=localhost:8888 helm list'

### Docker aliases ###
alias dockerrm='docker rm -f $(docker ps -aq)'
alias dockerstp='docker stop $(docker ps -aq)'
alias dockerrmi='docker rmi -f $(docker images -q) && docker images'

### gcloud aliasses ###
alias gal='gcloud auth login'
alias gadl='gcloud auth application-default login'
alias gali='gcloud auth list'

### LazyGit aliases ###
alias lg='lazygit'

### Local Development Applications ###
alias argocd='HTTPS_PROXY=localhost:8888 kubectl get secret argocd-initial-admin-secret -n argocd -o json | jq -r '.data.password' | base64 -d \
  && echo "" \
  && HTTPS_PROXY=localhost:8888 kubectl port-forward svc/argocd-server 8080:80 -n argocd'

alias backstage='HTTPS_PROXY=localhost:8888 kubectl port-forward svc/backstage 7007:7007 -n backstage'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daniely/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/daniely/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daniely/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/daniely/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


### Fuzzy Finder aliases ###
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height=60% --preview="bat --color=always {}" --preview-window=right:60%:wrap'
