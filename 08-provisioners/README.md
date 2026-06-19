# 08 — Provisioners

Run scripts and commands on resources after Terraform creates them.

## What You'll Learn

- `local-exec` — running a command on your own machine
- `remote-exec` — running commands inside the created EC2 instance over SSH
- `null_resource` — running a provisioner without attaching it to a real resource
- Why HashiCorp recommends provisioners as a last resort, not a first choice

## Files in This Folder

| File | Purpose |
|------|---------|
| `versions.tf` | Locks Terraform and provider versions |
| `provider.tf` | AWS provider and region |
| `variables.tf` | Optional key pair name and private key path, needed only for remote-exec |
| `main.tf` | EC2 instance with local-exec, an optional EC2 instance with remote-exec, and a null_resource example |
| `outputs.tf` | Instance ID and public IP of the main demo instance |

## Notes

The `local-exec` example works immediately with no extra setup. The `remote-exec` example only runs if you supply an existing EC2 key pair name and the matching private key path as variables — otherwise it's skipped automatically. Prefer `user_data` or a configuration management tool over provisioners for anything beyond quick learning experiments.

## Commands to Run

```bash
terraform init
terraform apply
cat instance_log.txt   # see what local-exec wrote

# Re-trigger the null_resource provisioner on demand
terraform apply -replace="null_resource.run_script"

terraform destroy
```

## End of terraform-basics

You've covered provider setup, resources, variables, state, modules, data sources, workspaces, and provisioners — a solid foundation for real-world Terraform work.
