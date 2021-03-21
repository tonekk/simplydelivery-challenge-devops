resource "aws_route53_zone" "primary" {
  name = var.domain
}

resource "aws_route53_record" "subdomain" {

  for_each = toset(var.cnames)

  zone_id = aws_route53_zone.primary.zone_id
  name    = "${each.value}.${var.domain}"
  type    = "CNAME"
  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}
