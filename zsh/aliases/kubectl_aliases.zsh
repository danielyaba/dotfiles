### KUBECTL ALIASES ###
alias kubectl='HTTPS_PROXY=localhost:8888 kubectl'
alias kcx='HTTPS_PROXY=localhost:8888 kubectx'
alias k9s='HTTPS_PROXY=localhost:8888 k9s'
alias kubens='HTTPS_PROXY=localhost:8888 kubens'
alias ke='HTTPS_PROXY=localhost:8888 kubectl exec -it'
alias ka='HTTPS_PROXY=localhost:8888 kubectl apply -f'
alias kg='HTTPS_PROXY=localhost:8888 kubectl get'
alias kd='HTTPS_PROXY=localhost:8888 kubectl describe'
alias kdel='HTTPS_PROXY=localhost:8888 kubectl delete'


### KUBECTL LOGS ###
alias kl='HTTPS_PROXY=localhost:8888 kubectl logs -f'
alias kl1='HTTPS_PROXY=localhost:8888 kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 1p)'
alias kl2='HTTPS_PROXY=localhost:8888 kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 2p)'
alias kl3='HTTPS_PROXY=localhost:8888 kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 3p)'
alias kl4='HTTPS_PROXY=localhost:8888 kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 4p)'
alias kl5='HTTPS_PROXY=localhost:8888 kubectl logs -f $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 5p)'


### DEPLOYMENT ###
alias kgd='HTTPS_PROXY=localhost:8888 kubectl get deployment'
alias kdd='HTTPS_PROXY=localhost:8888 kubectl describe deployment'
alias kdeld='HTTPS_PROXY=localhost:8888 kubectl delete deployment'


### PODS ###
alias kgp='HTTPS_PROXY=localhost:8888 kubectl get pods'
alias kgpo='HTTPS_PROXY=localhost:8888 kubectl get pods -o wide'
alias kgpy='HTTPS_PROXY=localhost:8888 kubectl get pods -o yaml'
alias kgpj='HTTPS_PROXY=localhost:8888 kubectl get pods -o json'
alias kdp='HTTPS_PROXY=localhost:8888 kubectl describe pods'
alias kdp1='HTTPS_PROXY=localhost:8888 kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 1p)'
alias kdp2='HTTPS_PROXY=localhost:8888 kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 2p)'
alias kdp3='HTTPS_PROXY=localhost:8888 kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 3p)'
alias kdp4='HTTPS_PROXY=localhost:8888 kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 4p)'
alias kdp5='HTTPS_PROXY=localhost:8888 kubectl describe pod $(kubectl get pods -o custom-columns=:metadata.name --no-headers | sed -n 5p)'
alias kdelp='HTTPS_PROXY=localhost:8888 kubectl delete pods'


### SECRETS ###
alias kgs='HTTPS_PROXY=localhost:8888 kubectl get secrets'
alias kds='HTTPS_PROXY=localhost:8888 kubectl describe secrets'


### SERVICE ###
alias kgsvc='HTTPS_PROXY=localhost:8888 kubectl get service'
alias kdsvc='HTTPS_PROXY=localhost:8888 kubectl describe service'
alias kdelsvc='HTTPS_PROXY=localhost:8888 kubectl delete service'


### INGRESS ###
alias kgi='HTTPS_PROXY=localhost:8888 kubectl get ingress'
alias kdi='HTTPS_PROXY=localhost:8888 kubectl describe ingress'
alias kdeli='HTTPS_PROXY=localhost:8888 kubectl del ingress'


### CONFIG-MAP ###
alias kgcm='HTTPS_PROXY=localhost:8888 kubectl get configmap'
alias kdcm='HTTPS_PROXY=localhost:8888 kubectl describe configmap'
alias kdelcm='HTTPS_PROXY=localhost:8888 kubectl delete configmap'


### CROSSPLANE ###
alias kgm='HTTPS_PROXY=localhost:8888 kubectl get managed'
