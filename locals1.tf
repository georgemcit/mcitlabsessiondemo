locals{
  landmarks1="museum"
  landmarks2="Notre-Dame Basilica"
  landmarks3="Biodome"
  landmarks4="Habitat 67"
  landmarks5="Mount Royal Park"
}
output "print1"{
    value = local.landmarks1
}
 
output "print2"{
    value = local.landmarks2
}

output "print3"{
    value = local.landmarks3
}

output "print4"{
    value = local.landmarks4
}

output "print5"{
    value = local.landmarks5
}
variable "company_name"{
 type=string
 default="Ipex"
}
variable "years_of_work"{
 type=number
 default="2"
}
variable "ifstillworking"{
 type=bool
 default="true"
}
outpute "company_name"{
 value=var.company_name
}
outpute "ifstillworking"{
 value=var.ifstillworking
}
outpute "years_of_worke"{
 value=var.years_of_work
}