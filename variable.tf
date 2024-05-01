variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "prefix"{
 type=string
 default="samiislam"
}
variable "firstname"{
 type=string
 default="sami"
}
variable "lastname"{
 type=string
 default="islam"
}
variable "account_tier"{
  type=string
  default="Standard"
}
variable "access_tier"{
  type=string
  default="Cool"
}
variable "account_replication_type"{
  type=string
  default="GRS"
}
variable "cross_tenant_replication_enabled"{
 type=bool
 default=false
}

variable "environment"{
 type=string
 default="staging"
}
variable "summersports"{
    type =list(string)
    default=["soccer","basketball","badminton","tabletennis"]
}
output "summersportslist"{
    value=[for summersport in var.summersports:summersport ]
}
variable "favouritefood"{
    type =list(string)
    default=["tabola","mlokia","shakrea","shawrma","falafel"]
}
output "favouritefood"{
    value=[for favouritefood in var.favouritefood:favouritefood ]
}
variable "original_string" {
  default = "George Ibrahim"
}
output "company_name_output"{
    value=var.my_name
}




