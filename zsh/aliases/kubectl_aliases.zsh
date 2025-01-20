### KUBECTL ALIASES ###
alias kubectl='kubectl'
alias kcx='HTTPS_PROXY=localhost:8888 kubectx'
alias k9s='HTTPS_PROXY=localhost:8888 k9s'
alias kubens='HTTPS_PROXY=localhost:8888 kubens'
alias ke='kubectl exec -it'
alias ka='kubectl apply -f'
alias kg='kubectl get'
alias kd='kubectl describe'
alias kdel='kubectl delete'


### KUBECTL LOGS ###
alias kl='kubectl logs -f'
alias kl1='kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 1p)'
alias kl2='kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 2p)'
alias kl3='kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 3p)'
alias kl4='kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 4p)'
alias kl5='kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 5p)'


### DEPLOYMENT ###
alias kgd='kubectl get deployment'
alias kdd='kubectl describe deployment'
alias kdeld='kubectl delete deployment'


### PODS ###
alias kgp='kubectl get pods'
alias kgpo='kubectl get pods -o wide'
alias kgpy='kubectl get pods -o yaml'
alias kgpj='kubectl get pods -o json'
alias kdp='kubectl describe pods'
alias kdp1='kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 1p)'
alias kdp2='kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 2p)'
alias kdp3='kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 3p)'
alias kdp4='kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 4p)'
alias kdp5='kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 5p)'
alias kdelp='kubectl delete pods'


### SECRETS ###
alias kgs='kubectl get secrets'
alias kds='kubectl describe secrets'


### SERVICE ###
alias kgsvc='kubectl get service'
alias kdsvc='kubectl describe service'
alias kdelsvc='kubectl delete service'


### INGRESS ###
alias kgi='kubectl get ingress'
alias kdi='kubectl describe ingress'
alias kdeli='kubectl del ingress'


### CONFIG-MAP ###
alias kgcm='kubectl get configmap'
alias kdcm='kubectl describe configmap'
alias kdelcm='kubectl delete configmap'


### CROSSPLANE ###
alias kgm='kubectl get managed'
