# tflint-ignore-file: terraform_required_providers

provider "aws" {
  region  = var.region
  profile = var.profile
}
