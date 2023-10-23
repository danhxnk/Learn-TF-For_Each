variable "resourcegroup_name" {
  type        = string
  description = "The name of the resource group"
  default     = "TFTestDanH01"
}

variable "location" {
  type        = string
  description = "The location"
  default     = "CentralUS"
}

variable "tags" {
  type        = map(string)
  description = "Tags used"
  default = {
    "Environment" = "Lab"
    "Owner"       = "DanH"
  }
}

variable "vvnet_name" {
  type        = string
  description = "Name of VNet"
  default     = "VNetTFTest"
}

variable "vnet_address_space" {
  type        = list(any)
  description = "VNet address space"
  default     = ["10.13.0.0/16"]
}

variable "subnets" {
  type        = map(any)
  description = "Local Subnets"
  default = {
    "subnet_1" = {
      name             = "subnet_1"
      address_prefixes = ["10.13.1.0/24"]
    }
      "subnet_2" = {
        name             = "subnet_2"
        address_prefixes = ["10.13.2.0/24"]
      }

      "subnet_3" = {
        name             = "subnet_3"
        address_prefixes = ["10.13.3.0/24"]
      }

      "bastion_subnet" = {
        name             = "AzureBastionSubnet"
        address_prefixes = ["10.13.250.0/24"]
      }
    
  }
}

variable "bastionhost_name" {
  type        = string
  description = "Nastion host name"
  default     = "BastionHost"
}