# State Migration Scenario

## BLUF
**Challenge**: Use Terraform to create a GCS bucket and a Pub/Sub topic in your project, then migrate your terraform state into the newly created GCS bucket

## Introduction
You will be using the GCP account that was assigned to you before this interview and Google Cloud Shell. You are not expected to run any of this code locally

Find and resolve any immediate issues with the provided terraform code. Your goal is to deploy a GCS bucket and a PubSub topic with a duration of `86600s`, then migrate the tfstate into the bucket that was created.

**Cloud Shell**
Please go to [Cloud Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal) in your browser. If you are already signed into a Google account, we recommend that you make a new Chrome Browser login to ensure that you don't accidentally incure any charges in your personal Google account.

## Evaluation Steps

- [ ] Update the terraform.tfvars file appropriately
- [ ] Run 'terraform apply'
- [ ] Verify that the GCS bucket was created [Cloud Console Link](https://console.cloud.google.com/storage/browser)
- [ ] Verify that the PubSub topic was created [Cloud Console Link](https://console.cloud.google.com/storage/browser)
- [ ] Add a new `backend` argument for the `terraform {}` in `main.tf` so that it uses the GCS bucket created in the apply [Example](https://developer.hashicorp.com/terraform/language/settings/backends/gcs#example-configuration)
- [ ] Run the migration `terraform init --migrate-state`
- [ ] Make a Git commit with your changes and push it back to GitLab