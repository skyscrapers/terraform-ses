# terraform-ses

Terraform module to setup AWS SES.

## Available variables

* \[`domain`\]: String(required): Domain to use for SES.
* \[`zone_id`\]: String(optional): Route 53 zone ID for the SES domain verification. If the `zone_id` is not set, we do not create verification record in R53.

## Output

* \[`domain_identity_arn`\]: String: ARN of the SES domain identity.

## Example

```terraform
module "ses" {
  source  = "../../modules/ses"
  domain  = "${var.domain_name}"
  zone_id = "${aws_route53_zone.zone.zone_id}"
}
```
