
kubectl create ns monitoring 

helm install prometheus stable/prometheus-operator -n monitoring \
--set prometheus.prometheusSpec.serviceMonitorSelectorNilUsesHelmValues=false \
--set prometheus.prometheusSpec.podMonitorSelectorNilUsesHelmValues=false

kubectl apply -f web-deployment.yaml
kubectl apply -f web-service.yaml
kubectl apply -f web-servicemonitor.yaml
kubectl port-forward -n monitoring prometheus-grafana-7c78857f5c-2sjb5 3000:3000