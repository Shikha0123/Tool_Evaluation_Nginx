terraform {

  backend "s3" {

    bucket         = "shuklabucket"

    key            = "Nginx/terraform.tfstate"

    region         = "us-east-1"

    dynamodb_table = "terraform-dynamodb-9839"

    encrypt        = true

  }

}