all:
  children:
%{ for i, group in cluster_groups ~}
#${group}:
#  children:
%{ endfor ~}
    ${cluster_name}:
      children:
        ${cluster_name}-${cluster_random}:
            hosts:
%{ for i, fqdn in vms_fqdn ~}
              ${fqdn}:
                ansible_host: ${vms_ip[i]}
%{ endfor ~}