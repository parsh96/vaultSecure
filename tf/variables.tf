variable "access_key" {}
variable "secret_key" {}
variable "region" {
    default = "ap-northeast-1"
}
variable "ami" {
    default = "ami-0b2c2a754d5b4da22"
}
variable "hello_tf_instance_count" {
    default = 1
}
variable "hello_tf_instance_type" {
    default = "t2.micro"
}
