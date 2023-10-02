#doitlive speed: 5
#doitlive prompt: [{user}@gitops demo-02]$

oc get all -n openshift-gitops
oc get applications

tree .

oc apply -f app-of-apps.yaml
