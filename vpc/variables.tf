variable "vpc_name" {
  type        = string
}

variable "auto_create_subnetworks" {
  type        = bool
}

variable "project_id" {
  type        = string
}

variable "subnets" {
  description = "All subnets across all VPCs; module filters based on vpc_key"
  type        = list(object({
    subnet_name          = string
    subnet_ip_cidr_range = string
    subnet_region        = string
    vpc_key              = string
  }))
}

variable "vpc_key" {
  description = "Key of the current VPC from parent for_each"
  type        = string
}
