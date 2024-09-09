variable "ami" {
  type    = string
  default = "ami-0a2e10c1b874595a1"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}

variable "vpc" {
  type    = string
  default = "virginia Virtual Private Cloud"
}
variable "vpc_CIDR" {
  default = "10.0.0.0/16"
}

###################################################################################
################### Start - AWS Network configuration variables ###################
###################################################################################

variable "private_subnet" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.3.0/24"]
}

variable "acl" {
  type = map(string)
  default = {
    "vpc"     = "tokyo VPC ACL"
    "public"  = "tokyo Private ACL"
    "private" = "tokyo Private ACL"
  }
}
#Create security groups dynamically
/*variable "security-group" {
  type = map(string)
  default = {
    "frontend" = "tokyo Frontend Security Group"
    "backend"  = "tokyo Backend Security Group"
  }
}
*/
variable "ingress_rule" {
  description = "Ingress Rule for VPC"
  default     = {
    "my ingress rule" = {
      description = "For HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    "2nd ingress rule" = {
      description = "All ports Allowed"
      from_port   = 0
      to_port     = 65535
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    }

  }
}

variable "egress_rule" {
  description = "Egress Rule for VPC"
  default     = {
    "my egress rule" = {
      description = "For HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    "2nd egress rule" = {
      description = "All ports Allowed"
      from_port   = 0
      to_port     = 65535
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }
}

variable "internet-gateway" {
  type    = string
  default = "virginia Internet Gateway"
}

variable "route-table" {
  type = map(string)
  default = {
    "public" = "virginia Public Route Table"
  }
}

variable "instanceTenancy" {
  default = "default"
}

variable "dnsSupport" {
  default = true
}

variable "dnsHostNames" {
  default = true
}

variable "azs" {
  type = map(string)
  default = {
    "az1" = "us-east-1a"
    "az2" = "us-east-1c"
  }
}

variable "allIPsCIDRblock" {
  default = "0.0.0.0/0"
}

variable "mapPublicIP" {
  default = true
}
#################################################################################
################### End - AWS Network configuration variables ###################
#################################################################################
