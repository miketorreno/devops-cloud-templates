variable "project" {
  description = "project name"
  type        = string
}

variable "environment" {
  description = "environment name (e.g. dev, staging, prod)"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "cidr_block" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability zones" {
  description = "Availability zones"
  type        = list(string)
  default     = []
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = []
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = []
}

variable "database_subnet_cidrs" {
  description = "List of database subnet CIDR blocks"
  type        = list(string)
  default     = []
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Enable DNS support in VPC"
  type        = bool
  default     = true
}

variable "enable_nat_gateway" {
  description = "Enable NAT gateway in VPC"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Enable single NAT gateway in VPC"
  type        = bool
  default     = true
}

variable "enable_flow_logs" {
  description = "Enable VPC flow logs"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
