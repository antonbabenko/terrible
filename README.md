# Refactor Terraform configurations using Ansible

<img src="https://raw.githubusercontent.com/antonbabenko/terrible/master/terrible.png" alt="Terrible - Refactor Terraform configurations using Ansible" align="right" />

There is a need to orchestrate Terraform configuration files using powerful features of Ansible (such as search and replace, run terraform/terragrunt commands) and organize this as reusable playbooks.

### TERRIBLE IS ABSOLUTELY NOT INTENDED FOR PRODUCTION USAGE!

Terrible will try to change files, run terraform commands and succeed (potentially) which means your infrastructure can be damaged! Make backups, check and understand `terrible.yml` :)

***In fact, I want to make Terrible a **SAFE** helper which will prompt user, request confirmation when necessary, etc***

## List of features Terrible (potentially) will eventually support

- [ ] List all available Terraform projects
- [ ] Update values in terraform.tfvars
- [ ] Update version of the module
- [ ] Format Terraform code
- [ ] Mass run of Terraform/Terragrunt commands in a set of projects

## Usage

1. Define `terraform_project_root_dir` and `terraform_bin` in `vars/settings.yml`.

1. All terrible tasks are described in `terrible.yml`.

1. Run normally:

```bash
$ make terrible
```

or with more verbose output:

```bash
$ make terrible-debug
```

or with check-mode enabled:
```bash
$ make terrible-check
```

## Requirements

Terrible requires Terraform and Ansible installed.

Terraform configs should be in directories as expected by Terragrunt.

## Authors

Created by [Anton Babenko](https://github.com/antonbabenko) to do terrible things.

## License

Apache 2 Licensed. See LICENSE for full details.
