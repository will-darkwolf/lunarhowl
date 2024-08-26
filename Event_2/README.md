## Event 2

**Introduction**

Terraform validation error

You will be using the GCP account that was assigned to you before this interview and Google Cloud Shell. You are not expected to run any of this code locally

Resolve any issues that you encounter. Make the least amount of changes to the code, the time to impress us will come later. Ensure that your code is *formatted* and *validated* before committing it and pushing.

**Cloud Shell**
Please go to [Cloud Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal) in your browser. If you are already signed into a Google account, we recommend that you make a new Chrome Browser login to ensure that you don't accidentally incure any charges in your personal Google account.

## Evaluation Steps

[ ] Change directories into the `~/candidate-test/Event_2` directory
[ ] Run 'terraform init'
[ ] Run 'terraform apply'
[ ] Verify that the GCS bucket was created [Cloud Console Link](https://console.cloud.google.com/storage/browser)
[ ] Run 'terraform destroy' to clean up the project
[ ] Run `terraform fmt`
[ ] Run `git add main.tf`
[ ] Run `git commit -m "fix bucket code"`
[ ] Run `git push`