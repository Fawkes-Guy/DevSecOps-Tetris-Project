terraform {
  backend "s3" {
    bucket         = "s3backendtetris"
    region         = "us-east-2"
    key            = "DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "state-lock"
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