locals {
  # Consolidate a place in memory to point to the secret contents
  value = var.generate ? random_password.optional[0].result : var.contents
  encoded_value = var.encode_base64 ? base64encode(local.value) : local.value
  contents = replace(var.contents, "{value}", local.encoded_value)
}

resource "random_password" "optional" {
  /*
  Generate the secret contents if the module is asked to
  */
  count = var.generate ? 1 : 0
  length = var.length
  special = var.special
  override_special = var.override_special
}
