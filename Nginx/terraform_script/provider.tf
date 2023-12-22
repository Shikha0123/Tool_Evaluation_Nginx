# terraform {
#   required_providers {
#     aws = {
#       source  = "mirror.terraform.io/hashicorp/aws"
#       version = "5.31.0"
#     }
#   }
# }


provider "aws" {
  region = "us-east-1"
}