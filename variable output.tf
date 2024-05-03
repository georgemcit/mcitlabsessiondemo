
output "string_length" {
  value = length(var.original_string)
}
output "uppercase_string" {
  value = upper(var.original_string)
}
output "lowercase_string" {
  value = lower(var.original_string)
}
output "join_name" {
  value = join(" ", var.string_list)
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
  contains_keyword = contains(split(" ", var.original_string), "CANADA")
}
output "contains"{
    value = local.contains_keyword

}
output "string_contains_no_sample" {
  value = local.contains_keyword ? "String contains 'CANADA'" : "String does not contain 'CANADA'"
}
