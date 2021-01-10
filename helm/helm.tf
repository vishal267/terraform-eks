##Calico
#resource "helm_release" "aws-calico" {
#  name       = "aws-calico"
#  namespace  = "kube-system"
#  repository = "https://aws.github.io/eks-charts"
#  chart      = "aws-calico"

#values = [
#     "${file("charts/metrics-server/cluster-autoscaler/values.yaml")}"
#   ]
#}



#Metrics server 
resource "helm_release" "metric-server" {
  name       = "metric-server"
  namespace  = "kube-system"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "metric-server"

}

resource "helm_release" "autoscaler" {
  name       = "cluster-autoscaler"
  namespace  = "kube-system"
  repository = "https://kubernetes.github.io/autoscaler"
  chart      = "cluster-autoscaler"

values = [
     "${file("charts/metrics-server/cluster-autoscaler/values.yaml")}"
   ]
}

resource "helm_release" "nginx-ingress" {
  name       = "nginx-ingress"
  namespace  = "kube-system"
  repository = "https://helm.nginx.com/stable"
  chart      = "nginx-ingress"

values = [
     "${file("charts/nginx-ingress/values.yaml")}"
   ]

}
#####################################MONITORING AND LOGGING ##################################################

###Prometheus operator

#resource "helm_release" "prometheus" {
#  name       = "prometheus"
 # namespace  = "monitoring"
 # repository = "https://prometheus-community.github.io/helm-charts"
 # chart      = "prometheus"
 # version    = "9.3.2"

#values = [
 #   "${file("charts/prometheus/values.yaml")}"
 #  ]
#}

#resource "helm_release" "grafana" {
#  name       = "grafana"
#  namespace  = "monitoring"
#  repository = "https://grafana.github.io/helm-charts"
#  chart      = "grafana"
#  version = "5.0.0"
#values = [
#    "${file("charts/grafana/values.yaml")}"
#   ]
#}


resource "helm_release" "loki" {
  name       = "loki"
  namespace  = "monitoring"
  repository = "https://grafana.github.io/loki/charts"
  chart      = "loki"
#  version = "0.40.0"

values = [
    "${file("charts/loki/values.yaml")}"
   ]
}

resource "helm_release" "argocd" {
  name       = "argo-cd"
  namespace  = "argocd"
 repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version = "2.8.0"
values = [
    "${file("charts/argo/argocd-values.yaml")}"
  ]
}




#resource "helm_release" "jenkins" {
#  name       = "jenkins#"
#  namespace  = "kube-system"
#  repository = "https://charts.jenkins.io"
#  chart      = "jenkins"

#values = [
#     "${file("charts/jenkins/values.yaml")}"
#   ]
#}

#resource "helm_release" "meshery" {
#  name       = "meshery"
#  namespace  = "meshery"
#  repository = "https://meshery.io/charts"
#  chart      = "meshery"
 # version    = "0.4.22"
#values = [
 #    "${file("charts/meshery/values.yaml")}"
  # #]
#}
