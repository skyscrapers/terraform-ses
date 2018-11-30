# terraform-ses

Terraform module to setup AWS SES.

This module creates an AWS SES resource and adds DKIM records to the provided Route53 zone ID.

## Available variables

* \[`domain`\]: String(required): Domain to use for SES.
* \[`zone_id`\]: String(optional): Route 53 zone ID for the SES domain verification. If the `zone_id` is not set, we do not create verification record in R53.
* \[`ses_records`\]: List(optional): Additional entries which are added to the _amazonses record

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
