variable region {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable ami_id {
  description = "Rocky linux AMI ID"
  type        = string
  default     = "ami-03ca52fa7cdd00b6a"
}

variable vpc_id {
  description = "VPC ID to build the AMI"
  type        = string
  default     = "vpc-051c8064a18dda233"
}

variable subnet_id {
  description = "Subnet ID to build the AMI"
  type        = string
  default     = "subnet-06e751abe9c5c313c"
}

variable "aws_account_id" {
  description = "AWS account ID"
  type        = list(string)
  default     = ["416557291090"] # pt-bl-test
}

variable instance_type {
  description = "instance type for AMI"
  type        = string
  default     = "t2.small"
}

variable associate_public_ip_address {
  description = "Associate public ip"
  type        = bool
  default     = true
}


variable ssh_user_name {
  description = "ssh user for instance"
  type        = string
  default     = "rocky"
}

variable image_name {
  description = "Image name"
  type        = string
  default     = "rockylinux8-api-ami-{{timestamp}}"
}