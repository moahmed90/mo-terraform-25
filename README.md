# mo-terraform-25

AWS infrastructure provisioned with Terraform. Built to practise real-world IaC patterns including remote state and automated deployments.

## What it provisions

- EC2 instance (t2.micro) in eu-west-2
- ECR repository for Docker images
- S3 backend for remote Terraform state

## CI/CD

GitHub Actions workflow runs `terraform plan` on every push and `terraform apply` on merge to main.

## Stack

- Terraform ~> 5.0
- AWS (EC2, ECR, S3)
- GitHub Actions

## Usage
```bash
terraform init
terraform plan
terraform apply
```

> State is stored remotely in S3. You'll need AWS credentials configured locally or via environment variables.

## Author

Mohamed Ahmed — [LinkedIn](https://linkedin.com/in/mohamed-ahmed-devops-uk)
