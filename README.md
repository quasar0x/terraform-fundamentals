# Terraform Fundamentals Project

This project contains multiple structured examples that demonstrate Terraform's core features, including infrastructure provisioning, remote backends, modules, provisioners, and workspaces. Each folder focuses on a different concept to reinforce Terraform best practices and workflows.

## Project Structure

### `ec2-creation/`

Basic EC2 instance deployment in AWS using:

* Local state file
* Variables and outputs
* Single-resource definition

### `remote-backend/`

Shows how to configure remote state storage using:

* S3 bucket as backend
* `backend.tf` configuration
* Optional DynamoDB for state locking (not included here)

### `terraform-modules/`

Illustrates Terraform module usage:

* Reusable EC2 instance module in `modules/ec2_instance`
* Root module passes input variables and retrieves outputs
* Suitable for scaling infrastructure and reusability

### `terraform-provisioners/`

Deploys an EC2 instance and bootstraps it with:

* File provisioner to copy a local `app.py` script
* Remote-exec provisioner to install dependencies and start a Flask app

### `terraform-workspaces/`

Demonstrates workspace-based environment separation:

* Isolated `dev`, `prod`, and `stage` state files
* Same codebase for different environments
* Uses modules for consistent resource creation

## How to Use

1. Initialize the working directory:

   ```bash
   terraform init
   ```
2. Plan the changes:

   ```bash
   terraform plan
   ```
3. Apply the configuration:

   ```bash
   terraform apply
   ```

> Note: When using `terraform-workspaces/`, switch workspaces using:
>
> ```bash
> terraform workspace select dev
> ```

## Requirements

* Terraform CLI v1.4+
* AWS CLI configured with credentials
* SSH key pair in `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub` (for provisioners)

---

Feel free to extend the examples with S3 backends, VPC modules, Vault secrets, and more!
