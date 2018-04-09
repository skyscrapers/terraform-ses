variable "domain" {
  description = "Domain to use for SES"
}

variable "zone_id" {
  description = "Route 53 zone ID for the SES domain verification"
  default     = ""
}

variable "dkim_records" {
  description = "Amazon SES DKIM records to add to R53"
  type        = "map"
  default     = {}
}

variable "ses_records" {
  description = "Additional entries which are added to the _amazonses record"
  default = []
}
