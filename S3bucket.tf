resource "aws_s3_bucket" "example" {
  bucket = "mybucketforterraform1234"

  tags = {
    Name        = "mybucketforterraform1234"
  }
}