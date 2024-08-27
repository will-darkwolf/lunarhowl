# Candidate Test

## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps. 

Basically, we are going to use a Personal Access Token (PAT) to `git clone` this repo into our GCP Cloud Shell

### 0. Configure Local Git
1. In your Cloud Shell terminal, run `git config --global credential.helper cache`
1. In your Cloud Shell terminal, run `git config --global user.name <your name>`
1. In your Cloud Shell terminal, run `git config --global user.email <your email>@lunarhowl.dev`


### 1. Create Personal Access Token
1. Create a Personal Access Token [Here](https://git.lunarhowl.dev/-/user_settings/personal_access_tokens)
    1. Name it "pat"
    1. Set the expiration date to tomorrow
    1. Give it "read repository" and "write repository" permissions
    1. Select "Create Private Access Token"
1. Copy the PAT and save it a new document in your Cloud Shell console

### 2. Clone this Repository
1. `git clone https://git.lunarhowl.dev/CANDIDATE/candidate-test.git`
    1. When prompted, use "test" for the username
    1. Use the PAT from above as your password

## Scenarios

### Terraform

Terraform challenges to test your abilities to complete tasks in Terraform.
1. Basic apply
2. Reading error messages
3. State migration
4. Using modules