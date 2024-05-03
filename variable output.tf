
output "string_length" {
  value = length(var.original_string)
}
output "uppercase_string" {
  value = upper(var.original_string)
}
output "lowercase_string" {
  value = lower(var.original_string)
}
output "replaced_string" {
  value = replace(var.original_string, "IBRAHIM", "GEORGE")
}
output "join_name" {
  value = join(" ", var.string_list)
}
output "concatenated_string" {
  value = "${var.original_string}${var.additional_string}"
}
output "substring_example" {
  value = substr(var.original_string, 3, -1)
}
output "trimmed_string" {
  value = trim(var.nospace_string," ")
}
output "split_example" {
  value = split(" ", var.original_string)
}
output "reverse_example" {
  value = join("", reverse(split("", var.original_string)))
}
locals {
  contains_keyword = contains(split(" ", var.original_string), "GEORGE")
}
output "contains"{
    value = local.contains_keyword

}
output "string_contains_no_sample" {
  value = local.contains_keyword ? "String contains 'GEORGE'" : "String does not contain 'IBRAHIM'"
}
