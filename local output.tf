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
     value =[for university in local.universitiesinMontreal: university]
}
output "restaurantsinmontreal"{
     value =[for restaurant in local.restaurantsinmontreal:restaurant]
}
output "sumofthreenumbers"{
    value=sum([for numberoutput in local.total_output: tonumber(numberoutput)])
}
output "sumofsevennumbers"{
    value=sum([for numberoutput in local.total_output1: tonumber(numberoutput)])
}
