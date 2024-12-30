variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID"
  type        = string
}

variable "private_subnet_id" {
  description = "Private subnet ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "public_key_name" {
  description = "Name of the SSH key pair for public instance"
  type        = string
  default     = "Test.pem"
}

variable "private_key_name" {
  description = "Name of the SSH key pair for private instance"
  type        = string
  default     = "Test2.pem"
}