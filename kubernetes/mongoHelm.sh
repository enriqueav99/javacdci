helm repo add mongodb https://mongodb.github.io/helm-charts
helm install mongodbc-chart mongodb/community-operator --namespace nsmongo --create-namespace
kubectl config set-context --current --namespace=nsmongo
kubectl apply -f ./mongoCRD.yml