terraform {

  backend "s3" {

    bucket         = "shuklaji"

    key            = "Nginx/terraform.tfstate"

    region         = "us-east-1"

    dynamodb_table = "shuklaji"

    encrypt        = true

  }

}
