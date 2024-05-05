# Print the volume's mount path
# output "volume_mountpoint" {
#   value = "/mnt/HC_Volume_${split("HC_Volume_", hcloud_volume.data_volume.linux_device)[1]}"
# }

output "web_ipv6_addresses" {
  value = [for i in range(length(hcloud_server.web)) : hcloud_server.web[i].ipv6_address]
}

output "web_ipv4_addresses" {
  value = [for i in range(length(hcloud_server.web)) : hcloud_server.web[i].ipv4_address]
}
