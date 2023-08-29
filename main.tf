# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

# Define the input variables
variable "access_key" {
  description = "AKIA4XDB54DG34J5TAFO"
  type        = string
}

variable "secret_key" {
  description = "sdPwSp/38cS7QdmypLkGjWejqI6YLWQFzUCxzRMZ"
  type        = string
  sensitive   = true
}

# Create the S3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "my-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
