
variable "github_token" {
  
}

variable "github_organization" {
  
}

# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

data "github_repository" "myorgrepo" {
  full_name = "${var.github_organization}/myorgrepo"
}

output "default_branch" {
  value = "${data.github_repository.myorgrepo.default_branch}"
}
