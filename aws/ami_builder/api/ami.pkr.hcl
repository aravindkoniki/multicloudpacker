source "amazon-ebs" "rockylinux" {
  # assume_role {
  #   role_arn     = "arn:aws:iam::Account_ID:role/Role_Name"
  #   session_name = "packer-session"

  # }
  region                      = var.region
  source_ami                  = var.ami_id
  instance_type               = var.instance_type
  ssh_username                = var.ssh_user_name
  ami_name                    = var.image_name
  vpc_id                      = var.vpc_id
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address

  tags = {
    "Name" : "Packer-Ami"
  }
}

build {
  name = "create-ami"
  sources = [
    "source.amazon-ebs.rockylinux"
  ]

  # provisioner "shell" {
  #   inline = ["echo initial provisioning"]
  # }

  # provisioner "shell" {
  #   script = "../../../aws/scripts/hardening.sh"
  # }

  # provisioner "shell" {
  #   script = "configuration/script.sh"
  # }
}