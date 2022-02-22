locals {
  # Consolidate a place in memory to point to the secret contents
  contents = var.generate ? random_password.optional[0].result : var.contents
}

resource "random_password" "optional" {
  /*
  Generate the secret contents if the module is asked to
  */
  count = var.generate ? 1 : 0
  length = var.length
  special = true
}
