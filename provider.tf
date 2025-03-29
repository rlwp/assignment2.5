terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
     version = "5.93.0"
   }
 }
}

# Define provider
provider "aws" {
  region = "us-east-1"
}
