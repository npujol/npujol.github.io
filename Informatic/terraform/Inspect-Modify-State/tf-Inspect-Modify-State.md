---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Inspect / Modify State

## Contents

- [[tf-graph]]
- [[tf-list]]
- [[tf-output]]

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/inspect> / modify state@inbTto9Qukdj6egRJ0Zh9)__

## Inspect / Modify State

Terraform provides tools to inspect and modify state, enabling management of tracked resources without altering the actual infrastructure. These capabilities allow users to view the current state in human-readable format, list all resources in the state, and obtain detailed information on specific resources. For state modification, Terraform offers methods to move resources within the state or to different state files, remove resources from state without deleting the actual resource, and update the state to match real-world infrastructure. These tools are crucial for reconciling discrepancies between Terraform’s state and actual infrastructure, and for managing resources across different Terraform configurations or workspaces. However, state modifications should be performed cautiously, as improper changes can lead to inconsistencies between the state and the actual infrastructure.

## show

The terraform show command displays a human-readable view of the current state or a saved plan file. When used without arguments, it presents the current state of the managed infrastructure, including all resources and their attributes. If given a path to a saved plan file, it shows the changes that would be made by applying that plan. This command is useful for inspecting the current state of your infrastructure, verifying the details of specific resources, or reviewing planned changes before applying them. It provides a comprehensive overview of your Terraform-managed resources, making it valuable for debugging, auditing, and understanding the current state of your infrastructure. The output includes sensitive information if present, so care should be taken when sharing or displaying the results in unsecured environments.
Free Resources

---

- [officialTerraform show](https://developer.hashicorp.com/terraform/cli/commands/show)
- [officialTerraform state show](https://developer.hashicorp.com/terraform/cli/commands/state/show)

## output

The terraform output command is used to extract the value of an output variable from the Terraform state. It allows you to view the values of outputs defined in your Terraform configuration after they have been applied. This command is useful for retrieving information about your infrastructure, such as IP addresses, resource IDs, or computed values, which can then be used in scripts or passed to other systems. When run without arguments, it displays all outputs. You can specify a particular output name to retrieve a specific value. The command supports different output formats, including JSON, making it easy to integrate with other tools or workflows. It’s particularly valuable in CI/CD pipelines or when Terraform is used as part of a larger automation process.
Free Resources

---

- [officialTerraform output command](https://developer.hashicorp.com/terraform/cli/commands/output)
- [articleTerraform output](https://learning-ocean.com/tutorials/terraform/terraform-output/)

## rm

The terraform state rm command is used to remove resources from the Terraform state without destroying the actual infrastructure. This command is useful when you want to stop managing a resource with Terraform without deleting it, or when you need to move a resource to a different state file. It takes one or more resource addresses as arguments, specifying which resources to remove from state. After removal, Terraform will no longer track or manage these resources, but they will continue to exist in your infrastructure. This command should be used carefully, as it can create discrepancies between your Terraform configuration and the actual state of your infrastructure.
Free Resources

---

- [officialTerraform rm command](https://developer.hashicorp.com/terraform/cli/commands/state/rm)
- [articleTerraform State Rm: How to Remove a Resource From State File](https://spacelift.io/blog/terraform-state-rm)
- [videoHow to remove resource from Terraform state file | terraform state rm example](https://www.youtube.com/watch?v=uK__Ls6an1c)

## mv

The terraform state mv command is used to move resources within a Terraform state or between separate state files. It allows for reorganizing the state without modifying the actual infrastructure. This command is useful when refactoring Terraform configurations, moving resources between modules, or splitting a large state file into smaller ones. It takes two arguments: the source and destination addresses of the resource. The command updates all references to the moved resource, ensuring that future operations correctly target the resource at its new location. This functionality is particularly valuable when restructuring complex projects or adapting to changing organizational needs. However, it should be used cautiously, as incorrect moves can lead to state inconsistencies.
Free Resources

---

- [officialTerraform state mv](https://developer.hashicorp.com/terraform/cli/commands/state/mv)
- [articleMoving resoureces](https://developer.hashicorp.com/terraform/cli/state/move)
- [videoTerraform — Terraform State MV](https://www.youtube.com/watch?v=i10IMXn3l0o)

## replace option in apply

The -replace flag in Terraform is used with the apply or plan command to force the replacement of a specific resource by tainting the resources. This flag instructs Terraform to delete and recreate the specified resource instead of updating it in place. It’s useful when you need to regenerate a resource completely, such as when certain attributes can’t be modified after creation. The flag is typically used when Terraform can’t automatically detect that a resource needs replacement, or when you want to force a replacement for testing or troubleshooting purposes. While powerful, this flag should be used cautiously, especially with stateful resources, as it can lead to data loss. It’s often employed in scenarios where in-place updates are not sufficient to achieve the desired configuration state of a resource.
Free Resources

---

- [articleForcing Re-creation of Resources](https://developer.hashicorp.com/terraform/cli/state/taint)
- [articleTerraform Taint, Untaint, Replace – How to Use It (Examples)](https://spacelift.io/blog/terraform-taint)
- [videoTerraform Taint Is Bad Actually - Use Replace Instead](https://www.youtube.com/watch?v=v_T1fuYGjV0)

## state pull / push

The `terraform state pull` and `terraform state push` commands are used for managing Terraform state in remote backends. The `pull` command retrieves the current state from the configured backend and outputs it to stdout, allowing for inspection or backup of the remote state. It’s useful for debugging or for performing manual state manipulations.

The`push` command does the opposite, uploading a local state file to the configured backend, overwriting the existing remote state. This is typically used to restore a backup or to manually reconcile state discrepancies. Both commands should be used with caution, especially push, as they can potentially overwrite important state information.
Free Resources

---

- [officialCommand - State pull](https://developer.hashicorp.com/terraform/cli/commands/state/pull)
- [officialCommand - State push](https://developer.hashicorp.com/terraform/cli/commands/state/push)
- [articleMigrate Workspace State Using Terraform State Push / Pull](https://support.hashicorp.com/hc/en-us/articles/360001151948-Migrate-Workspace-State-Using-Terraform-State-Push-Pull)

## state replace-provider

The `terraform state replace-provider` command in Terraform is used to update the provider information in the state file without altering the actual infrastructure. This command is particularly useful when migrating from one provider to another, or when updating to a new major version of a provider that involves a change in the provider’s namespace. It allows users to change the provider associated with resources in the state file, effectively telling Terraform to use a different provider for managing these resources in future operations. This command is crucial for maintaining state consistency during provider transitions or upgrades, especially in large-scale infrastructures. While it doesn’t modify the actual resources, it updates Terraform’s understanding of which provider should be used to manage them, facilitating smooth provider migrations without requiring resource recreation.
Free Resources

---

- [officialCommand - state replace-provider](https://developer.hashicorp.com/terraform/cli/commands/state/replace-provider)

## state force-unlock

The `terraform state force-unlock` command in Terraform is used to manually release a stuck state lock. State locking is a mechanism that prevents concurrent operations on the same state, but occasionally a lock may not be properly released due to crashes or network issues. This command allows administrators to forcibly remove the lock, enabling further Terraform operations to proceed. It should be used with extreme caution, as it can lead to state corruption if multiple users are attempting to modify the state simultaneously. Before using force-unlock, it’s crucial to ensure that no other Terraform operations are genuinely in progress. This command is typically a last resort for resolving locking issues and should only be employed when certain that the lock is erroneously held and no conflicting operations are ongoing.
Free Resources

---

- [officialCommand: force-unlock](https://developer.hashicorp.com/terraform/cli/commands/force-unlock)
- [articleTerraform force-unlock command](https://spacelift.io/blog/terraform-force-unlock)
- [videoTerraform — Force Unlock](https://www.youtube.com/watch?v=qVs9pLaXSeg)
