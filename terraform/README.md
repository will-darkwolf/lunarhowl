## Dark Wolf Candidate Terraform Test

This is your chance to show us how familiar with Terraform you are. These aren't meant to be tricky questions, so just work through them.
Feel free to reference any guides that you would normally use if you have any questions.

Talk about your process too. We are trying to assess what you would be like to work with, not whether you get through all of the challenges

## Terraform Challenge 1: Basic Apply

### Description

For the first task, you will create a GCS bucket using the terraform config provided. It should be as simple as supplying a valid bucket name and typing `yes`

### Instructions
Change directories and prepare your terraform environment:

```bash
cd TF_1/
terraform init
terraform apply
```

It will ask you for an input variable for naming the bucket, and you might have to refine your response.
Keep attempting to run `terraform apply` until you get it to complete succesfully.

## Terraform Challenge 2: Basic Error

### Description

Similar to the first challenge, but this time there will be an intentional error for you to fix. Read the error carefully.

### Instructions

Change directories to TF_2 and get started

```bash
cd ../TF_2/
terraform init
terraform apply
```

Work through the errors here, using any sources you would normally use. You will need to modify the code.

Good luck!

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

## Terraform Challenge 4: Modules
### Description

Congratulations on making it this far in the alloted time. For this challenge, we'll take the code from TF_1 and modify it to use the nifty GCS bucket module that is included in the `modules/` directory

### Instructions

Change directories to TF_4 and get started. Work through the errors here, using any sources you would normally use. You will need to modify the code.

```bash
cd ../TF_4/
terraform init
```

Make additions to the `main.tf` file to use the [gcs module](../../modules/gcs/README.md). Include only the required variables.

```bash
terraform init
terraform apply
```

Good luck!

### Congratulation

That's it for now