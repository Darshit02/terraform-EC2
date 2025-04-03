variable "ec2_instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t2.micro"
}

variable "ec2_default_root_storage_size" {
  description = "The size of the root volume in GB"
  type        = number
  default     = 8
}

variable "ec2_ami_id" {
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  description = "The AMI ID to use for the instance"
  type        = string
}


variable "env" {
  default     = "dev"
  description = "The environment to deploy to (dev, test, prd)"
  type        = string
}