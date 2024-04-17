provider "aws"{
    region     = "${var.region}"    
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

################## Creating an EKS Cluster ##################
resource "aws_eks_cluster" "cluster" {
  name     = "whiz"
  role_arn = "arn:aws:iam::124787947185:role/task98_role_152500.35844158"

  vpc_config {
    subnet_ids = ["subnet-0bc65a52b3bb700ef", "subnet-07a3b0da3cc79ea3e"]
  }
}