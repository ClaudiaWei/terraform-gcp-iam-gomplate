terraform {
  backend "gcs" {
    bucket = "<your-bucket-name>"
    prefix = "iam-permission/"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.00"
    }
  }
}

provider "google" {
  project = "<your-project-id>"
  region  = "us-west1"
}