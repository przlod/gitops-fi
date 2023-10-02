#doitlive speed: 5
#doitlive promt: [{user}@demo-01]$

oc project simon01-argocd
vim demo-01-argocd.yaml
oc apply -f demo-01-argocd.yaml
oc get all -n simon01-argocd

oc new-project simon01-project
oc label namespace simon01-project argocd.argoproj.io/managed-by=simon01-argocd

vim demo-01-application.yaml
oc apply -f demo-01-application.yaml -n simon01-argocd
