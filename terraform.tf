terraform {
  required_version = ">= 1.9.8"

  required_providers {
    github = {
      source = "integrations/github"
      version = "6.4.0"
    }
  }

    backend "local" {}

}

provider "github" {
  //owner = var.application_owner
  token = var.token
  /*app_auth {
    id = var.application_id
    installation_id = var.application_installation_id
    pem_file = file("./lsf_pk.pem")
  }*/
}

