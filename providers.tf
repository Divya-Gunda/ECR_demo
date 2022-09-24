terraform {
  required_providers {
    docker = {
        source = "kreuzwerker/docker"
        //version = "20.10.17"
    }
      aws = {
        source = "hashicorp/aws"
        //version = "~> 7.34"
    }
  }
}

provider "docker" {
 registry_auth {
  address = "https://registry.hub.docker.com/repository/docker/divyagunda/demo"
  username = "divyagunda"
  password = "Divya@1612"
 }
}

provider "aws" {
  //shared_credentials_file = "/home/ubuntu/.aws/credentials"
  
  //profile = "bttstaging"
  region =  var.region  
}



  