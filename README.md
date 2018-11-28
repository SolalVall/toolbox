# Toolbox Project

This project allows me to maintain my different toolbox versions which are simply dockerfile containing devops tools.
For example, in my case this toolbox help me for continuous integration by using GitLab-Runner inside a private project on AWS.

## Getting Started

Master branch is dedicated to explain the project, list all toolbox versions and how to use them through this README.

The dockerfile is based on alpine:3.8

Each version of Toolbox has a specific tagged branch (and after each new toolbok version a branch is created)

### Available versions

* v0.0.1: Install Ansible 2.7 (with Python and other necessary packages)
* v0.0.2: Add Terraform version 0.11.10

### Install specific Toolbox version

First of all you have to clone the repo with specific branch for set the toolbox version: 

```
git clone -b v0.0.2 https://github.com/SolalVall/toolbox.git
```

Finally just build the image
```
docker build -t toolbox:0.0.2 .
```
