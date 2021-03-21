terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "domain" {
  type    = string
}

variable "certificate_arn" {
  type    = string
}

variable "cnames" {
  type    = list(string)
  default = ["www"]
}

