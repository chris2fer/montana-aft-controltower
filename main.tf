

module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"
  # Required Vars
  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = "us-east-1"
  tf_backend_secondary_region = "us-east-2"

  # VCS Vars
  vcs_provider                                  = "github"
  account_request_repo_name                     = "chris2fer/aft-account-request"
  global_customizations_repo_name               = "chris2fer/aft-global-customizations"
  account_customizations_repo_name              = "chris2fer/aft-account-customizations"
  account_provisioning_customizations_repo_name = "chris2fer/aft-account-provisioning-customizations"

  # Optional Vars
  aft_vpc_endpoints = false
}
