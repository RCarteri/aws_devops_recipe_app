variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "raa"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact email for tagging resources"
  default     = "carterijj@gmail.com"
}

variable "db_username" {
  description = "Username for the recipe app api database"
  default     = "recipeapp"
}

variable "db_password" {
  description = "Password for the Terraform database"
}

variable "ecr_proxy_image" {
  description = "Path to the ECR repo with the proxy image"
}

variable "ecr_app_image" {
  description = "Path to the ECR repo with the API image"
}

variable "django_secret_key" {
  description = "Django secret key"
}

variable "dns_zone_name" {
  description = "Name of the DNS zone"
  # Create an AWS Route 53 public hosted zone and enter the name here
  default = "awsrecipe.com"
}

variable "subdomain" {
  description = "Subdomain for each environment"
  type        = map(string)

  default = { prod = "api"
    staging = "api.staging"
    dev     = "api.dev"
  }

}
