### Docker aliases ###
alias dockerrm='docker rm -f $(docker ps -aq)'
alias dockerstp='docker stop $(docker ps -aq)'
alias dockerrmi='docker rmi -f $(docker images -q) && docker images'
alias di='docker images'
alias dp='docker ps'
alias dpa='docker ps -a'
