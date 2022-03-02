output "arn" {
  description = "The ARN of the secret."
  value = aws_secretsmanager_secret.main.arn
}

output "name" {
  description = "Name of the created secret."
  value = split("--", join("--", [  # Force-wait for resource
    aws_secretsmanager_secret.main.arn,  # The ARN only exists after resource
    aws_secretsmanager_secret.main.name
  ]))[1]
}

output "contents" {
  description = "The contents of the secret IN PLAIN TEXT."
  value = local.contents
  sensitive = true
}
