locals {
  prefix = "${var.project}-${var.environment}"
  common_tags = {
    project     = var.project
    environment = var.environment
    owner       = var.owner
    managed_by  = "terraform"
    cost_center = var.cost_center
  }
}
