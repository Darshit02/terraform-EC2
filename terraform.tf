terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.91.0"
    }
  }

  backend "s3" {
    bucket = "state-bucket"
    key    = "terraform.tfstate"
    region  = "us-east-2"
    dynamodb_endpoint = "state-table"
  }
}