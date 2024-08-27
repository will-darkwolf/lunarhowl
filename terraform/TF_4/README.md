## Event 4

**Introduction**

Terraform modules

You will be using the GCP account that was assigned to you before this interview and Google Cloud Shell. You are not expected to run any of this code locally

Find and resolve any immediate issues with the provided terraform code. Your goal is to deploy a GCS bucket, this time using a module which is available in the [modules/](../modules/) folder.

**Cloud Shell**
Please go to [Cloud Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal) in your browser. If you are already signed into a Google account, we recommend that you make a new Chrome Browser login to ensure that you don't accidentally incure any charges in your personal Google account.

## Evaluation Steps

- [ ] Update the terraform.tfvars file appropriately
- [ ] Make additions to the `main.tf` file to use the [gcs module](../../modules/gcs/README.md). Include only the required variables.
- [ ] Run 'terraform apply'
- [ ] Verify that the GCS bucket was created [Cloud Console Link](https://console.cloud.google.com/storage/browser)
- [ ] Make a Git commit with your changes and push it back to GitLab