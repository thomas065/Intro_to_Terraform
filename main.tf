# resource "local_file" "sample_res" {
#   filename = "sample.txt"
#   content  = "I love Terraform"
# }

resource "local_sensitive_file" "sample_res2" {
  filename = "sample_args.txt"
  content = "I love Terraform"
  file_permission = "0700"
}
