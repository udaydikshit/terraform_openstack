variable "instance_name" {

 type = string

 description = "Name of the instance to be created"

 default = "myinstance"

}

variable "count_instance" {

 description = "Number of instances to be created"

 default = 1

}

variable "image_id" {

type = string

description = "ID of the image to be used with instance"

default = ""

}

variable "flavor_name" {

 type = string

 description = "Name of the flavor to be used with the instance"

 default = ""

 sensitive = true

}

variable "key_name" {

 type = string

 description = "Name of the key to be associated with the instance"

 default = ""

}

variable "volume_size" {

 description = "Size of the volume to be used with the instance"

 default = 10

}
