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
}
locals{
   flattened_list = flatten(var.nested_list)
}
output "simple_local"{
    value = local.simple_local_flattened_list
}
output "flattened_list"{
    value = local.flattened_list
}
