output "name_len20" {
  value = random_string.rand_name1.result
}

output "name_len10" {
  value = random_string.rand_name2.result
}



# output "result_filename" {
#   value = local_file.sample_res.filename
# }

# output "result_content" {
#   value = local_file.sample_res.content
# }

# output "resultint" {
#   value = random_integer.rint.result
# }

# output "resultstring" {
#   value = random_string.rstring.result
# }