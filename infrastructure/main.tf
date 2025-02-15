resource "aws_rds_instance" "mysql" {
  allocated_storage       = var.db_allocated_storage
  instance_class          = var.db_instance_class
  engine                  = "mysql"
  engine_version          = "8.0"
  name                    = var.db_name
  username                = var.db_username
  password                = var.db_password
  publicly_accessible     = true
  skip_final_snapshot     = true

  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  # Optional backups and monitoring
  backup_retention_period = 7
  monitoring_interval     = 60
  storage_encrypted       = true
}

resource "aws_security_group" "rds_sg" {
  name        = "rds-security-group"
  description = "Security group for RDS MySQL"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with a specific CIDR range for better security
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
