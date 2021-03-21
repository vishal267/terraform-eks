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
  default = "eks-01"
}
variable "key_name" {
  type    = string
  default = "march"
}
variable "k8s_version" {
  type = string
  default = "1.18"
}

variable "release_version" {
  type    = string
  default = "1.18.9-20210125"
}

variable "min_node_count" {
  type    = number
  default = 2
}

variable "max_node_count" {
  type    = number
  default = 2
}

variable "machine_type" {
  type    = string
  default = "t2.medium"
}

variable "state_bucket" {
  type    = string
  default = "tf1-dmo"
}
