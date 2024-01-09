provider "github" {
  token = "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"
}

module "aws-asg-module" {
  source = "git@github.com:plivo/terraform-github-repository-module.git?ref=v0.0.4"

# Repository details
resource "github_repository" "aws_asg_module" {
  name        = "terraform-aws-asg-module"
  description = "Terraform module for setting up AWS ASG"
  private     = false

  # GitHub topics for the repository
  topics      = ["terraform", "aws", "asg", "module"]

  # Template for repository settings
  template = {
    owner      = "plivo"
    repository = "terraform-module-template"
  }

  # GitHub teams with admin access
  admin_teams = [
    "devops"
  ]

  # GitHub teams with pull (read-only) access
  pull_teams = [
    "coengage",
    "functional_callinsights",
    "functional_central",
    "functional_clientsdk",
    "functional_financialsystems",
    "functional_messaging",
    "functional_numbers",
    "functional_phloandconsole",
    "functional_sre",    
    "functional_sellular",
    "functional_serversdk",
    "functional_voice",
    "functional_voice_api",
    "functional_zentrunk"
  ]
}
