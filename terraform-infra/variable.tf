

variable "location" {
  type    = string
  default = "East US"

}

variable "environment" {
  type    = string
  default = "dev"

}

variable "business_unit" {
  type    = string
  default = "IT"

}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]

}


variable "subnet_name" {
  type    = string
  default = "mayur-snet"

}



variable "sunet_prefix" {
  type    = list(string)
  default = ["10.0.1.0/24"]

}
