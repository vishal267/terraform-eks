# terraform-eks

terraform init 
terraform plan 
terraform apply --auto-approve 


terraform output cluster_name
export KUBECONFIG=$PWD/kubeconfig

aws eks update-kubeconfig \
    --name \
    $(terraform output cluster_name) \
    --region \
    $(terraform output region)

kubectl get node


#install charts 
cd helm

#prometheus-operator 
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus-operator prometheus-community/prometheus  -n monitoring  -f charts/prometheus/values.yaml

#Grafana 
helm repo add grafana https://grafana.github.io/helm-charts
helm install grafana grafana/grafana  -n monitoring  -f charts/grafana/values.yaml

#elastisearch 
helm repo add elastic https://helm.elastic.co
 helm install elasticsearch elastic/elasticsearch -n monitoring  -f charts/elasticsearch/values.yaml

#ES exporter 

helm install elasticsearch-exporter  prometheus-community/prometheus-elasticsearch-exporter -n monitoring  -f prometheus-elasticsearch-exporter/values.yaml
