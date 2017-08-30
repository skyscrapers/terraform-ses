resource "aws_ses_domain_identity" "domain" {
  domain = "${var.domain}"
}
