---
tags:
  - roadmap
  - devops
  - devops-configuration-management
  - ready
  - online
---

# devops-configuration-management-chef

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/chef@kv508kxzUj_CjZRb-TeRv)__

## Chef

Emerging in 2009, Chef (now known as Progress Chef) is one of the earliest configuration management tools to gain popularity. Chef “Recipes” are written in Ruby, in a primarily declarative style. Chef requires that a client is installed on a server being managed. This client polls a Chef-Server regularly, to determine what its configuration should be. Chef-Solo is also available, a version of Chef that allows provisioning of a single node by running chef locally. A key tenet of Chef recipe design is the concept of idempotence. All Chef recipes should be runnable multiple times and produce the same result - this is especially necessary in cases where the client/server model listed above is in use. This pattern of configuration management is highly influential for future declarative tools like Terraform and Cloud Formation.

Visit the following resources to learn more:

* [@official@Chef Website](https://www.chef.io/products/chef-infra)
* [@article@Chef Tutorial](https://www.tutorialspoint.com/chef/index.htm)
* [@video@chef/chef](https://github.com/chef/chef)
* [@feed@Explore top posts about Chef](https://app.daily.dev/tags/chef?ref=roadmapsh)

## Example

Here is an example Chef recipe that creates a Postgres VM:

```ruby
# File: postgres_vm.rb

# Include the `vm` cookbook to manage virtual machines
include_recipe 'vm'

# Define the VM details
vm_name = 'postgres-vm'
vm_memory = 4096
vm_vcpus = 2
vm_disk_size = 10000
vm_network_interface = 'br0'


# Create the VM
bash 'create_vm' do
  code <<-EOF
    virt-install --name #{vm_name} --memory #{vm_memory} --vcpus 
#{vm_vcpus} --disk size=#{vm_disk_size},format=qcow2 --network 
model=virtio,bridge=#{vm_network_interface}
  EOF
end

# Install Postgres on the VM
bash 'install_postgres' do
  code <<-EOF
    ssh #{vm_name}@localhost 'sudo apt-get update && sudo apt-get install 
-y postgresql-server'
  EOF
end


# Configure Postgres to listen on all interfaces
template '/etc/postgresql/13/main/postgresql.conf' do
  source 'postgresql.conf.erb'
  variables(
    listen_addresses: '*',
    port: 5432,
    max_connections: 100
  )
end

# Restart the Postgres service
service 'postgrsql' do
  action [:start, :stop]
end
```

Let me explain what this recipe does:

1. The first line includes the `vm` cookbook to manage virtual machines.
2. The next few lines define the VM details: name, memory, vcpus, disk  size, and network interface.
3. The `create_vm` bash script creates a new virtual machine using `virt-install`.
4. The `install_postgres` bash script installs Postgres on the VM using `apt-get`.
5. The template `/etc/postgresql/13/main/postgresql.conf` configures the Postgres configuration file to listen on all interfaces and sets some basic settings.
6. Finally, the recipe restarts the Postgres service to apply the new configuration.

You'll need to create an `postgresql.conf.erb` template file with the desired Postgres configuration settings. Here's an example:

```erb
listen_addresses = <%= @listen_addresses %>
port = <%= @port %>
max_connections = <%= @max_connections %>
```

This template sets up the Postgres listener to listen on all available network interfaces, sets the port to 5432, and limits the maximum number of connections to 100.

To use this recipe, create a new directory for your cookbook (e.g., `postgres_vm`) and add this file (`postgres_vm.rb`). Then, run `chef-client` in that directory to execute the recipe.
