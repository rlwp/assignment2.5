#terraform {
# backend "s3" {
#   bucket = "sctp-ce9-tfstate"
#   key    = "rudylee_ce9-module2-lesson3.tfstate" # Replace the value of key to <your suggested name>.tfstat   
#   region = "us-east-1"
# }
#}

# Backend block to manage Terraform state
terraform {
  backend "s3" {
    bucket         = "rudysctps3bucket" # Replace with your S3 bucket name
    key            = "rudylee_ce9.tfstate" # Path in the bucket
    region         = "us-east-1" # Same region as your AWS resources
    encrypt        = true # Enable state encryption
    # aws_dynamodb = "TerraformStateLock" # Optional: State lock table in DynamoDB
  }
}

