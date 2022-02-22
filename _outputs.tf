output "arn" {
  value = aws_secretsmanager_secret.main.arn
}

output "contents" {
  value = local.contents
  sensitive = true
}
