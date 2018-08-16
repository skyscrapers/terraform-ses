resource "aws_ses_domain_identity" "domain" {
  domain = "${var.domain}"
}

resource "aws_ses_domain_dkim" "dkim" {
  domain = "${aws_ses_domain_identity.domain.domain}"
}
