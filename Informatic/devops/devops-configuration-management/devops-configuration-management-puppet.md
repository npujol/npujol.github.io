---
tags:
  - roadmap
  - devops
  - devops-configuration-management
  - ready
  - online
---

# devops-configuration-management-puppet

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/puppet@yP1y8U3eblpzbaLiCGliU)__

## Puppet

Puppet is an open-source configuration management tool that automates the provisioning, configuration, and management of servers and applications across infrastructure. It uses a declarative, model-based approach where administrators define the desired state of systems using Puppet’s domain-specific language or Ruby. Puppet agents running on managed nodes periodically check with a central Puppet server, applying necessary changes to reach the defined state. This ensures consistency across environments and facilitates scalable infrastructure management. Puppet supports a wide range of operating systems and cloud platforms, offering modules for common services and applications. With features like reporting, role-based access control, and integration with other DevOps tools, Puppet helps organizations implement infrastructure as code, enforce compliance, and streamline IT operations across diverse and complex environments.

Visit the following resources to learn more:

* [@official@Puppet Website](https://puppet.com/)
* [@course@Puppet Full Course | Learn Puppet Training](https://www.youtube.com/watch?v=Ns_tRKD20c4)
* [@feed@Explore top posts about Puppet](https://app.daily.dev/tags/puppet?ref=roadmapsh)

## Example

```puppet
# File: postgres_vm.pp

class postgres_vm {
  $vm_name = 'postgres-vm'
  $vm_memory = 4096
  $vm_vcpus = 2
  $vm_disk_size = 10000
  $vm_network_interface = 'br0'

  # Create the VM using virt-install
  exec { "create-vm":
    command => "virt-install --name ${vm_name} --memory ${vm_memory} 
--vcpus ${vm_vcpus} --disk size=${vm_disk_size},format=raw --network 
model=virtio,bridge=${vm_network_interface}",
    creates => "/var/lib/virt/images/${vm_name}.img",
  }
# Install Postgres on the VM
  package { 'postgresql-server':
    ensure   => installed,
    provider => apt,
  } ->

  # Configure Postgres to listen on all interfaces
  file { '/etc/postgresql/13/main/postgresql.conf':
    content => template('postgresql/config.erb'),
    notify  => Service['postgresql'],
  }

  # Restart the Postgres service
  service { 'postgresql':
    ensure   => running,
    restart  => true,
  }
}
```

Let me explain what this module does:

1. The first section defines the VM details: name, memory, vcpus, disk size, and network interface.
2. The `exec` resource creates a new virtual machine using `virt-install`.
The `creates` parameter ensures that the script only runs if the VM image doesn't already exist.
3. The `package` resource installs Postgres on the VM using `apt`.
4. The `file` resource configures the Postgres configuration file to listen on all interfaces and sets some basic settings. The `template` function uses an ERB template (`postgresql/config.erb`) to generate the
configuration file content.
5. Finally, the `service` resource restarts the Postgres service to apply
the new configuration.

You'll need to create a `postgresql/config.erb` template file with the desired Postgres configuration settings. Here's an example:

```erb
listen_ addresses  = '<%= @listen_addresses %>'
port  = '<%= @port %>'
max_connections  = '<%= @max_connections %>'
```

This template sets up the Postgres listener to listen on all available network interfaces, sets the port to 5432, and limits the maximum number of connections to 100.

To use this module, create a new directory for your Puppet module (e.g., `postgres_vm`) and add this file (`postgres_vm.pp`). Then, run `puppet apply` in that directory to execute the module.
