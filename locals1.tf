locals{
  landmarks1="museum"
  landmarks2="Notre-Dame Basilica"
  landmarks3="Biodome"
  landmarks4="Habitat 67"
  landmarks5="Mount Royal Park"
  winterlistOfSports=["icehockey","snowboarding","iceskating"]
  universitiesinMontreal=["mcgill","concordia","quebec","universitydemontreal","vanier"]
  restaurantsinmontreal=["orginalshawrma","lailak","aboualzelof","rozana","nara"]
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
 default=2
}
variable "ifstillworking"{
 type=bool
 default=true
}
output "company_name"{
 value=var.company_name
}
output "ifstillworking"{
 value=var.ifstillworking
}
output "years_of_work"{
 value=var.years_of_work
}
output "wintersportslist"{
     value =[for sport in local.winterlistOfSports:sport]
}
output "universitiesinMontreal"{
     value =[for universities in local.universitiesinMontreal:university]
}
output "restaurantsinmontreal"{
     value =[for restaurants in local.restaurantsinmontreal:restaurant]
}
