
resource "helm_release" "elasticsearch" {
  name       = "elasticsearch"
  namespace  = "monitoring"
 repository = "https://helm.elastic.co"
  chart      = "elasticsearch"
#  version = "0.40.0"

#values = [
#    "${file("charts/elasticsearch/values.yaml")}"
#   ]
}

resource "helm_release" "kibana" {
  name       = "kibana"
  namespace  = "monitoring"
  repository = "https://helm.elastic.co"
  chart      = "kibana"
#  version = "0.40.0"

values = [
    "${file("charts/kibana/values.yaml")}"
  ]
}
#resource "helm_release" "fluentd" {
#  name       = "fluentd"
 # namespace  = "monitoring"
  #repository = "https://charts.bitnami.com/bitnami"
 # chart      = "fluentd"

#values = [
#    "${file("charts/fluentd/values.yaml")}"
 #  ]
#}
