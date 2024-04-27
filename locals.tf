locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  firstname="george"
  lastnmae="ibrahim"
city="montreal"
  lengthsa=length(local.servicename)
  lengthforum=length(local.forum)
}
output "print"{
    value = local.servicename
}
output "secondprint"{
    value = local.forum
}
output "lengthsa"{
    value=local.lengthsa
}
output "lengthforum"{
    value=local.lengthforum
}
output "printfirstname"{
    value = local.firstname
}
output "printlasrname"{
    value = local.lastname
}
output "printcity"{
    value = local.city
}
