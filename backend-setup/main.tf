
resource "aws_s3_bucket" "tf_state" {
  bucket        = "your-company-terraform-state-00107456"
  force_destroy = true
}

resource "aws_dynamodb_table" "tf_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
