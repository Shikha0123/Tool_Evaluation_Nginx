terraform {

  backend "s3" {

    bucket         = "shuklabucket89"

    key            = "Nginx/terraform.tfstate"

    region         = "us-east-1"

    dynamodb_table = "shikha_db"

    encrypt        = true

  }

}
