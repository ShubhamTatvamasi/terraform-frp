variable "project_name" {
  type        = string
  description = "Project Name"
  default     = "frp"
}

variable "sg_tcp_ports" {
  type        = list(number)
  description = "Security Group TCP Ports"
  default     = [22, 80, 443, 1194, 2222, 2379, 6443, 7000, 7500, 10250]
}

variable "sg_udp_ports" {
  type        = list(number)
  description = "Security Group UDP Ports"
  default     = [1194, 10000, 10001, 51831, 51832, 51833, 51834, 51835]
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
  default     = "t2.micro"
}

variable "volume_size" {
  type        = number
  description = "Volume Size"
  default     = 8
}

variable "volume_type" {
  type    = string
  default = "gp3"
}

variable "spot_instance" {
  type    = bool
  default = false
}

variable "spot_type" {
  type    = string
  default = "one-time"
}
