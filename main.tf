# Create DynamoDB Table
# resource "dynamodb" "rudy-bookinventory" { # there is no such "dynamodb"
resource "aws_dynamodb_table" "rudy-bookinventory" {
  name           = "rudy-bookinventory"
  billing_mode   = "PAY_PER_REQUEST"

  attribute {
    name = "ActivityID"
    type = "S" # String type
  }

  attribute {
    name = "Date"
    type = "S" # String type
  }

  hash_key  = "ActivityID"
  range_key = "Date" # Optional: Adds a range key for additional queries

  tags = {
    Purpose = "TodaysActivity"
    Managed = "Terraform"
  }
}