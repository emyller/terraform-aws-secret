resource "aws_secretsmanager_secret" "main" {
  /*
  The secret container in AWS Secrets Manager
  */
  name = var.name
  tags = var.tags
}

resource "aws_secretsmanager_secret_version" "main" {
  /*
  The latest version of the secret
  */
  secret_id = aws_secretsmanager_secret.main.id
  secret_string = local.contents
}
