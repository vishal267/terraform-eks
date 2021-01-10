variable "region" {
  type    = string
  default = "us-east-1"
}
variable "profile" {
  type    = string
  default = "devops"
}

variable "cluster_name" {
  type    = string
  default = "devops-catalog1"
}
variable "k8s_version" {
  type = string
  default = "1.18"
}

variable "release_version" {
  type    = string
  default = "1.18.9-20201211"
}

variable "min_node_count" {
  type    = number
  default = 2
}

variable "max_node_count" {
  type    = number
  default = 5
}

variable "machine_type" {
  type    = string
  default = "t2.medium"
}

variable "state_bucket" {
  type    = string
  default = "tf-dmo"
}
