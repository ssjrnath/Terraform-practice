## Terraform Practice

This is just a practice repo created to explore Terraform practices and features.


### How to use
1. After cloning the repo run `terraform init` to initialize the terraform working directory
2. Create prod and dev workspaces by running `terraform workspace new dev` and `terraform workspace new prod` respectively.
3. Update AWS credentials under shared credentials i.e., `~.aws/credentials`
4. Run terraform plan by providing respective workspace var file.
  > Ex: `terraform plan -var-file=development/dev.tfvars` to run plan for the configuration

### Incase of changes
1. Run `terraform fmt` to format the files
2. Run `terraform validate` to validate the configuration.
