resource "random_uuid" "ssh_key_uuid" {}

resource "aws_key_pair" "ssh-key" {
  key_name   = "${var.project_name}-key-${random_uuid.ssh_key_uuid.result}"
  public_key = file("~/.ssh/id_rsa.pub")
}
