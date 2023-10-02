#!/bin/bash

oc delete application echoenv-app -n simon01-project
oc delete application echoenv-app -n simon01-argocd
oc delete project simon01-project
oc delete argocd simons-project-argocd -n simon01-argocd

oc project simon01-argocd
