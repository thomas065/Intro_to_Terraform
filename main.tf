# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer
resource random_integer rint {
  min = 1
  max = 600
}

output "resultint" {
  value = random_integer.rint.result
}

resource "random_string" "rstring" {
  length           = 16
}

output "resultstring" {
  value = random_string.rstring.result
}

# resource "local_file" "cat_res" {
#   filename = "cat.txt"
#   content  = "I love Cats"
# }

# resource "local_file" "dog_res" {
#   filename = "dog.txt"
#   content  = "I love Dogs"
# }

# resource "local_file" "sample_res" {
#   filename = "sample.txt"
#   content = "I love Terraform"
# }

# resource "local_sensitive_file" "sample_res2" {
#   filename = "sample_args.txt"
#   content = "I love Terraform"
#   file_permission = "0700"
# }