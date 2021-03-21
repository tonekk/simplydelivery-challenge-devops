resource "aws_s3_bucket" "s_b" {
  bucket = "13simplybucket38"
  acl    = "public-read"

  tags = {
    Name = "SimplyBucket"
  }
}
