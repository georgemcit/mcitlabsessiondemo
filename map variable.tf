variable "simple_nested_list" {
  type    = list(list(string))
   default = [["a", "b"], ["c", "d"], ["e", "f"]]
 }
variable "nested_list" {
  type    = list(list(string))
  default = [["a", "b"], ["c", "d"], ["e", "f"]]
}

variable "nested_map" {
  type    = map(map(string))
  default = {
    group1 = {"name" = "Alice", "age" = "25"}
    group2 = {"name" = "Bob", "age" = "30"}
  }
}

locals{
   simple_local_flattened_list = flatten(var.simple_nested_list)
   flattened_list = flatten(var.nested_list)
   flattened_map  = flatten([for k, v in var.nested_map : [for kk, vv in v : { group = k, key = kk, value = vv }]])
   characters = ["luke", "yoda", "darth"]
  enemies_destroyed = [4252, 900, 20000056894]
  character_enemy_map =   { for index,character in local.characters: # Convert character list to a set
      character => local.enemies_destroyed[index]
  }

}
output "simple_local"{
    value = local.simple_local_flattened_list
}
output "flattened_list"{
    value = local.flattened_list
}
output "flattened_map"{
    value = value = local.flatten([for k, v in var.nested_map : [for kk, vv in v : { group = k, key = kk, value = vv }]])
}

