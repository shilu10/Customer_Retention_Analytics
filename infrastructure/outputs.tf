output "rds_endpoint" {
  value = aws_rds_instance.mysql.endpoint
}

output "rds_username" {
  value = var.db_username
}

output "rds_password" {
  value = var.db_password
  sensitive = true
}
