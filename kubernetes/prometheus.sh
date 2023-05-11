cd kube-prometheus
kubectl create -f manifests/setup
kubectl create -f manifests/
kubectl -n monitoring delete networkpolicies.networking.k8s.io --all
kubectl --namespace monitoring patch svc grafana -p '{"spec": {"type": "LoadBalancer"}}'
