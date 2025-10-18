terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }

  backend "s3" {
    bucket = "comunidadedevops-gab"
    key    = "dev/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region  = "sa-east-1"
  profile = "automacao-curso"
}
