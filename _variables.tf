variable "name" {
  description = "The name of the secret, e.g. /production/app_name/SECRET_KEY"
  type = string
}

variable "generate" {
  description = "Whether to have the secret value generated."
  type = bool
  default = false
}

variable "length" {
  description = "The length of the secret value, valid if generate = true."
  type = number
  default = 24
}

variable "contents" {
  description = <<-EOT
    The contents of the secret value. If generate = true, this will be used as
    template, where `{value}` is replaced by the generated value.
  EOT
  type = string
  default = "{value}"
  sensitive = true
}

variable "encode_base64" {
  description = "Encode the contents of the secret value to base64."
  type = bool
  default = false
}
