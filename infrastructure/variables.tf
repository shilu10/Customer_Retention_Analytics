variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "db_instance_class" {
  description = "RDS instance class"
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Name of the database"
  default     = "customer_retention"
}

variable "db_username" {
  description = "Master username for RDS"
  default     = "admin"
}

variable "db_password" {
  description = "Master password for RDS"
}

variable "db_allocated_storage" {
  description = "Allocated storage for RDS (GB)"
  default     = 10
}
