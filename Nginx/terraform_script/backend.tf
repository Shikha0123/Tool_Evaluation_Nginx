terraform {

  backend "s3" {

    bucket         = "shuklaji0"

    key            = "Nginx/terraform.tfstate"

    region         = "us-east-1"

    dynamodb_table = "shuklaji"

    encrypt        = true

  }

}
