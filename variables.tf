variable "domain" {
  type        = string
  description = "Domain to use for SES"
}

variable "zone_id" {
  type        = string
  description = "Route 53 zone ID for the SES domain verification"
  default     = null
}

variable "ses_records" {
  type        = list(string)
  description = "Additional entries which are added to the _amazonses record"
  default     = []
}
