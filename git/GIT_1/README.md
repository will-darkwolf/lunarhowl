## Basic Git Scenario

## BLUF

**Challenge**: Create a branch named `git_1`, create a commit, and push your branch back to GitLab

## Introduction
This document provides a step-by-step guide to using Terraform in a Google Cloud Platform (GCP) Cloud Shell instance. Terraform is a configuration language and tool for building and deploying cloud infrastructure.  Follow the steps outlined here to set up your environment. Terraform should already be installed into your Cloud Shell console, and you can use it to deploy various GCP resources, such as a GCS bucket. This guide will walk you through creating a basic configuration file using Terraform to deploy a GCS bucket to your GCP project.

You will be using the GCP account that was assigned to you before this interview and Google Cloud Shell. You are not expected to run any of this code locally

**Cloud Shell**
Please go to [Cloud Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal) in your browser. If you are already signed into a Google account, we recommend that you make a new Chrome Browser login to ensure that you don't accidentally incure any charges in your personal Google account.

## Evaluation Steps

- [ ] Run `git checkout -b git_1`
- [ ] Run `echo "hello world" > git/GIT_1/testfile`
- [ ] Run `git add git/GIT_1/testfile`
- [ ] Run `git commit -m "hello world"`
- [ ] Run `git push origin git_1`
- [ ] Verify that the branch is visible on [GitLab](https://git.lunar.darkwolf.rocks/)
