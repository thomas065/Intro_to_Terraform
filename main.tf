# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer
# https://developer.hashicorp.com/terraform/language/terraform


terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_integer" "name" {
  min = 0
  max = 1000
}





# resource "random_integer" "name" {
#   min = 20
#   max = 275

#   lifecycle {
#     #prevent_destroy = true
#     #create_before_destroy = true
#     ignore_changes = [ min ]
#   }
# }

# resource "local_file" "random_res1" {
#   filename   = "explicit.txt"
#   content    = "I love random strings of text:🤯 ${random_string.rand_name1.id}"
#   depends_on = [random_string.rand_name1]
# }

# resource "random_string" "rand_name1" {
#   length = 20
# }

# resource "local_file" "random_res2" {
#   filename = "implicit.txt"
#   content  = "I love random strings of text:🤯 ${random_string.rand_name2.id}"
# }

# resource "random_string" "rand_name2" {
#   length = 10
# }

# resource "local_file" "sample_res" {
#   filename = var.filename
#   content = var.content6.age
# }

# resource "local_file" "sample_res" {
#   filename = var.filename
#   content = var.content4[2]
# }

# resource "local_file" "sample_res" {
#   filename = var.filename
#   content = var.content5[0]
# }

# resource "local_file" "sample_res" {
#   filename = var.filename
#   content = var.content6.name
# }

# resource "local_file" "sample_res" {
#   filename = var.filename
#   content = var.content
# }

# resource random_integer rint {
#   min = 1
#   max = 600
# }

# resource "random_string" "rstring" {
#   length           = 16
# }

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