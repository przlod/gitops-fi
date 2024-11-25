#doitlive speed: 5
#doitlive prompt: [{user}@gitops demo-01]$

oc project fitam01-argocd
vim demo-01-argocd.yaml
oc apply -f demo-01-argocd.yaml
oc get all -n fitam01-argocd

oc new-project fitam01-project
oc label namespace fitam01-project argocd.argoproj.io/managed-by=fitam01-argocd

vim demo-01-application.yaml
oc apply -f demo-01-application.yaml -n fitam01-argocd
