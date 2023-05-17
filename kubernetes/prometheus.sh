kubectl create -f kube-prometheus/manifests/setup
kubectl create -f kube-prometheus/manifests/
kubectl -n monitoring delete networkpolicies.networking.k8s.io --all
kubectl --namespace monitoring patch svc grafana -p '{"spec": {"type": "LoadBalancer"}}'
