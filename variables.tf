variable "ct_management_account_id" {
  type        = string
  description = "The Account ID for the delegated admin for Control Tower"
}

variable "log_archive_account_id" {
  type        = string
  description = "The Account ID for the Log Archive Account"
}

variable "audit_account_id" {
  type        = string
  description = "The Account ID for the Auditing Account"
}

variable "aft_management_account_id" {
  type        = string
  description = "The Account ID for the account to hold the AFT automation"
}
