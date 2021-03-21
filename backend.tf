terraform {
  backend "s3" {
    profile = "devops"
    bucket = "tf1-dmo"
    key    = "eks/statefile"
  }
}
