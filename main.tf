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