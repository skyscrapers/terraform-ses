# terraform-ses

Terraform module to setup AWS SES.

## Available variables

*   \[`domain`\]: String(required): Domain to use for SES.
*   \[`zone_id`\]: String(required): Route 53 zone ID for the SES domain verification.

## Output

*   \[`domain_identity_arn`\]: String: ARN of the SES domain identity.

## Example

```terraform
module "ses" {
  source  = "../../modules/ses"
  domain  = "${var.domain_name}"
  zone_id = "${aws_route53_zone.zone.zone_id}"
}
```
