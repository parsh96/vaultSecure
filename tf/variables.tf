variable "access_key" {   
}
variable "secret_key" {
}
variable "region" {
    default = "ap-southeast-1"
}
variable "ami" {
    default = "ami-015a6758451df3cb9"
}
variable "hello_tf_instance_count" {
    default = 1
}
variable "hello_tf_instance_type" {
    default = "t2.micro"
}
