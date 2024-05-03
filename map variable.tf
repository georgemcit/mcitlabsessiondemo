variable "simple_nested_list" {
  type    = list(list(string))
  default = [["a", "b"], ["c", "d"], ["e", "f"]]
}
flattened_list = flatten(var.nested_list)
