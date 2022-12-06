resource "aws_cloudfront_public_key" "cf_pb_key" {
  comment     = "example public key"
  encoded_key = file("public_key.pem")
  name        = "public-key"
}

resource "aws_cloudfront_key_group" "cf_keygroup" {
  comment = "example key group"
  items   = [aws_cloudfront_public_key.cf_pb_key.id]
  name    = "key-group"
}
