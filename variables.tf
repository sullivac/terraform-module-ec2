variable "name" {
  description = "Name prefix on each instance"
}

variable "instance_count" {
  description = "Number of instances to create"
  default     = 1
}

variable "user_data" {
  description = "User data script"
}

variable "iam_instance_profile" {
  description = "IAM role to associate with these instances"
}

variable "subnet_id" {
  description = "Subnet id for the instances"
}

variable "vpc_security_group_ids" {
  description = "VPC security group ids for the instances"
  type        = "list"
}

variable "key_name" {
  description = "Key name for retrieving instance administrator passwords"
}
