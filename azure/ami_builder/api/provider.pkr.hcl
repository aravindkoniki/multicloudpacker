packer {
  required_plugins {
    azure = {
      version = ">= 2.1.3"
      source  = "github.com/hashicorp/azure"
    }
  }
}