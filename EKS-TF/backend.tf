terraform {
  backend "s3" {
    bucket         = "terraform-k8s-buck"
    region         = "ap-south-1"
    key            =eks-server/terraform.tfstate "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "statelock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
