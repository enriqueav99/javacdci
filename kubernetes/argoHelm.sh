helm install argo-cd argo-cd/ \
  --namespace argocd \
  --create-namespace --wait \
  --set configs.credentialTemplates.github.url=https://github.com/enriqueav99  \
  --set configs.credentialTemplates.github.username=enriqueav99 \
  --set configs.credentialTemplates.github.password=$(cat ../../github\ token.txt)

kubectl patch service/argo-cd-argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
kubectl create ns nsaludo

argocd app create guestbook \
  --repo https://github.com/enriqueav99/pruebacicd.git  \
  --revision master --path ./java-chart \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace argocd \
  --project default