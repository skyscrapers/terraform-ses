resource "aws_ses_domain_identity" "domain" {
  domain = "${var.domain}"
}

resource "aws_route53_record" "domain_amazonses_verification_record" {
  count   = "${var.zone_id != "" ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "_amazonses.${var.domain}"
  type    = "TXT"
  ttl     = "3600"
  records = ["${aws_ses_domain_identity.domain.verification_token}"]
}
