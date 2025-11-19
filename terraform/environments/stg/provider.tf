provider "aws" {
  region = local.region

  default_tags {
    tags = {
      Env          = local.environment
      Repository   = local.infra_repository
      Organization = local.organization
      BusinessUnit = "itr"
      Service      = local.system_name
    }
  }
}
