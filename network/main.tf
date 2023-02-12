resource "openstack_networking_network_v2" "network_1" {
  name           = "network_1"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "subnet_1" {
  name          = "subnet_1"
  cidr          = "10.0.0.0/24"
  network_id    = "${openstack_networking_network_v2.network_1.id}"
}
