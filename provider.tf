
terraform {
  backend "s3" {
    bucket = "${{ vars.terraform_state_bucket }}"
    key    = "${{ vars.terraform_state_key }}"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      managed_by = "AFT"
    }
  }
}
