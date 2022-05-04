terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.3"
    }
  }
}


provider "null" {}


provider "random" {}





resource "random_pet" "server" {
}


resource "null_resource" "igabr" {

  triggers = {
    build_number = "Object ${random_pet.server.id}"
  }

  provisioner "local-exec" {
    command = "echo resource name ${random_pet.server.id}"
  }
}
