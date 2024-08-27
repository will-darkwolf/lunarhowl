## Basic Git Scenario

## BLUF

**Challenge**: Merge the branch `git_a` and `git_b`, deconflicting any changesets as required, push the changes to GitLab, and open a merge request going into `main` there.

## Introduction
In this Git repository, two developers, Jane and Ben, have committed code in their branches. Can you help them with merging their branches together and submitting a merge request for approval?

First, from a checkout of branch `git_a`, merge in `git_b` and deconflict any changes.
Second, push the resulting branch `git_a` to GitLab, and open a merge request into `main`.

You will be using the GCP account that was assigned to you before this interview and Google Cloud Shell. You are not expected to run any of this code locally

**Cloud Shell**
Please go to [Cloud Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal) in your browser. If you are already signed into a Google account, we recommend that you make a new Chrome Browser login to ensure that you don't accidentally incure any charges in your personal Google account.

## Evaluation Steps

- [ ] Run `git checkout git_a`
- [ ] Run `git merge origin/git_b`
- [ ] Resolve any merge conflicts in the file `new_feature.py`. (Use the commit messages and code comments to decide the correct way to resolve the commit.)
- [ ] Finish the merge commit
- [ ] Run `git push origin git_a`
- [ ] Create a merge request for your new branch on [GitLab](https://git.lunar.darkwolf.rocks/CANDIDATE/candidate-test/-/merge_requests/new)
