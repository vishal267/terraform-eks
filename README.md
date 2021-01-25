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
