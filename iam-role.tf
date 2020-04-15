resource "aws_iam_role" "iam_role" {
  name                   = var.name
  name_prefix            = var.name_prefix
  assume_role_policy     = var.assume_role_policy
  force_detach_policies  = var.force_detach_policies
  path                   = var.path
  description            = var.description
  permissions_boundary   = var.permissions_boundary
  tags                   = var.tags

  lifecycle {
    create_before_destroy = true
  }
}