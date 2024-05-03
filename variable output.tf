output "string_length" {
  value = length(var.original_string)
}
output "uppercase_string" {
  value = upper(var.original_string)
}
output "lowercase_string" {
  value = lower(var.original_string)
}
output "concatenated_string" {
  value = "${var.additional_string}${var.original_string}"
}
output "reverse_examplesecond"{
  value=reverse(var.string_list)
}
output "join_example" {
  value = join(" ", var.string_list)
}
locals {
  contains_keyword = contains(split(" ", var.original_string), "CANADA")
}
output "contains"{
    value = local.contains_keyword
}
utput "string_contains_no_sample" {
  value = local.contains_keyword ? "String contains 'CANADA'" : "String does not contain 'CANADA'"
}


