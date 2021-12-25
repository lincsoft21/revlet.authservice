provider "aws" {
  version = "3.63.0"
  region  = local.region
  profile = "terraform"
}

terraform {
  backend "remote" {
    organization = "linsoft"

    workspaces {
      name = "revlet-authservice-deployment"
    }
  }
}

locals {
  region = "eu-west-2"
}