provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  required_version = "~> 0.13"

  backend "s3" {
    bucket = var.BACKEND_BUCKET
    key    = "terraform-github-actions.terraform.tfstate"
    region = "ap-northeast-1"
  }
}
