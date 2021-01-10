resource "helm_release" "goldilocks" {
  name       = "goldilocks"
  namespace  = "monitoring"
 repository = "https://charts.fairwinds.com/stable"
  chart      = "goldilocks"
values = [
    "${file("charts/goldilocks/values.yaml")}"
  ]
}

