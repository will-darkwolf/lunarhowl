## Event 1

**Introduction**

This document provides a step-by-step guide to using Terraform in a Google Cloud Platform (GCP) Cloud Shell instance. Terraform is a configuration language and tool for building and deploying cloud infrastructure.  Follow the steps outlined here to set up your environment. Terraform should already be installed into your Cloud Shell console, and you can use it to deploy various GCP resources, such as a GCS bucket. This guide will walk you through creating a basic configuration file using Terraform to deploy a GCS bucket to your GCP project.

You will be using the GCP account that was assigned to you before this interview and Google Cloud Shell. You are not expected to run any of this code locally

**Cloud Shell**
Please go to [Cloud Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal) in your browser. If you are already signed into a Google account, we recommend that you make a new Chrome Browser login to ensure that you don't accidentally incure any charges in your personal Google account.

## Evaluation Steps

[ ] Change directories into the `~/candidate-test/Event_1` directory
[ ] Run 'terraform init'
[ ] Run 'terraform apply'
[ ] Verify that the GCS bucket was created [Cloud Console Link](https://console.cloud.google.com/storage/browser)
[ ] Run 'terraform destroy' to clean up the project
