variable "vpc_name" {
    description = "The name of the VPC network"
    type        = string
}

variable "auto_create_subnetworks" {
    description = "Whether to auto-create subnetworks"
    type        = bool
    default     = false
}

variable "subnet_name" {
    description = "The name of the subnet"
    type        = string
}

variable "subnet_ip_cidr_range" {
    description = "The IP CIDR range of the subnet"
    type        = string
}

variable "region" {
    description = "The region where the subnet will be created"
    type        = string
}

variable "project_id" {
    description = "The region where the subnet will be created"
    type        = string
}