

variable "owner_name" {
  description = "Name of the resource owner (used in naming and tags)"
  type        = string
  default     = "ibrahim-neder"
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "portfolio"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "centralus"
}

variable "environment" {
  description = "Environment name (dev, prod, etc.)"
  type        = string
  default     = "terraform"
}

variable "github_repo" {
  description = "GitHub repository URL for the static web app"
  type        = string
  default     = "https://github.com/ibrahimneder/test"
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Owner       = "Ibrahim Neder"
    ManagedBy   = "Terraform"
    Project     = "Azure Static Website Portfolio"
    Environment = "Production"
  }
}
