provider "aws" {
    region     = "${var.region}"    
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

################## Creating an EKS Cluster ##################
resource "aws_eks_cluster" "cluster" {
  name     = "petclinic_eks_1"
  role_arn = "arn:aws:iam::322515116119:role/task98_role_152500.25571715"
  vpc_config {
    subnet_ids = module.vpc.private_subnets
    }
}