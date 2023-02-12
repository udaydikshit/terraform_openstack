#Creating an instance
resource "openstack_compute_instance_v2" "instance_1" { #Resource block to create an instance with a volume
  name            = var.instance_name
  region          = var.region_name
  count           = var.count_instance
  flavor_name       = var.flavor_name
  key_pair        = var.key_name
  network {
    name      = "" # name of the network to be used
  }
  security_groups = ["default"] #Security group name from the cloud



 block_device {
    uuid                  = var.image_id
    source_type           = "image"
    destination_type      = "volume"
    volume_size           = var.volume_size
    boot_index            = 0
    delete_on_termination = true #set to false to save volume for backup
  }
}

