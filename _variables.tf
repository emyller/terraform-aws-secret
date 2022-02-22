variable "name" {
  description = "The name of the secret, e.g. /production/app_name/SECRET_KEY"
  type = string
}

variable "generate" {
  description = <<-EOT
    Whether to have the secret value generated.
    This overrides 'contents'.
  EOT
  type = bool
  default = false
}

variable "length" {
  description = "The length of the secret value, valid if generate = true."
  type = number
  default = 24
}

variable "contents" {
  description = "The contents of the secret value, needed unless generate = true."
  type = string
  default = null
  sensitive = true
}

variable "base64encode" {
  description = "Encode the contents of the secret value to base64."
  type = bool
  default = false
}
