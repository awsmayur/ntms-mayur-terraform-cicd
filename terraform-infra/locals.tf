locals {
  prefix    = "${var.business_unit}-${var.environment}"
  rg_name   = "${local.prefix}-rg"
  vnet_name = "${local.prefix}-vnet"
  nsg_name  = "${local.prefix}-nsg"

  common_tags = {
    environment = var.environment
    team        = "AzureInfra"
    project     = "terraform-basics"
    managed_by  = "terraform"
  }


}

