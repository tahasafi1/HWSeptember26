variable "instance_type" {
    description = "The type of instance to use for the cluster. Defaults to 't2.micro'."
    type = string
    default = "t2.micro"
}

variable "instance_tag_name" {
    description = "tag name"
    type = string
}