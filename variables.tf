variable "filename" {
  type = string
  default = "sample.txt"
}

variable "content1" {
  type = number
  default = 25
}

variable "content2" {
  type = bool
  default = true
}

variable "content3" {
  type = string
  default = "I love coding with Terraform"
}

variable "content4" {
  type = list(string)
  default = ["red", "green", "blue"]
}

variable "content5" {
  type = tuple([ string, bool, number ])
  default = ["red", false, 49]
}

variable "content6" {
  type = map
  default = {name = "Thomas", age = 49}
}