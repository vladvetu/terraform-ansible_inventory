# generate inventory file for Ansible
resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/templates/ansible_inventory.tpl",
    {
      vms_ip = var.vms_ip
      vms_fqdn = var.vms_fqdn
      cluster_name = var.cluster_name
      cluster_random = var.cluster_random
      cluster_groups = var.cluster_groups
    }
  )
  filename = "${var.ansible_inventory_path}/inf-idm-a524b3.yml"
}