# include providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    newrelic = {
        source = "newrelic/newrelic"
        version = "~> 3.26.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = var.new_relic_account_id
  api_key =  var.new_relic_api_key
  region = var.new_relic_region
}