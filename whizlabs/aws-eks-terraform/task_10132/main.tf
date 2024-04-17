provider "aws"{
    region     = "${var.region}"    
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

################## Creating an EKS Cluster ##################
resource "aws_eks_cluster" "cluster" {
  name     = "whiz"
  role_arn = "arn:aws:iam::685533198991:role/task98_role_152500.53589894s"

  vpc_config {
    subnet_ids = ["	subnet-0752de048b5275198", "subnet-094d8c91035542f2e"]
  }
}