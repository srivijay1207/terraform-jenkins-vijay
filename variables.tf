variable "ami" {
  default = "ami-081609eef2e3cc958"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "instance" {
  type = list
  default = ["mongoDB","web","catalogue"]
}
variable "zone_id" {
  default = "Z03696561H7N206CB4X1"
}
variable "domain" {
  default = "srivijay.online"
}
