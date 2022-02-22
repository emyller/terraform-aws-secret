output "arn" {
  value = aws_secretsmanager_secret.main.arn
}

output "name" {
  value = aws_secretsmanager_secret.main.name
}

output "contents" {
  value = local.contents
  sensitive = true
}
