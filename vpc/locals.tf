locals {
  current_subnets = [for subnet in var.subnets : subnet if subnet.vpc_key == var.vpc_key]
}