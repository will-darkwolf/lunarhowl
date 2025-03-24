## Terraform Challenge 3: State Migration

### Description

For this challenge, you will need to run the `terraform apply` succesfully and then run a `terraform init -migrate-state` to migrate the state into your newly created GCS bucket.
There is also a `terraform.tfvars` file this time so you don't have to fill in the response.

You will encounter some errors and need to write your own TF code along the way.

### Instructions

Change directories to TF_3 and get started. Work through the errors here, using any sources you would normally use. You will need to modify the code.

```bash
cd ../TF_3/
terraform init
terraform apply
```

When you get through the `terraform apply` you can start on the migrate by adding a new `backend` argument for the `terraform {}` in `main.tf` so that it uses the GCS bucket created in the apply [Example](https://developer.hashicorp.com/terraform/language/settings/backends/gcs#example-configuration)

When you are ready, you can run

```bash
terraform init --migrate-state
```

Good luck!