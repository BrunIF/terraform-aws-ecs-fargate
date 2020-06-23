# AWS ECS Fargate for www.tenantcloud.com using Terraform

## Installation and configuration

Clone repository and open directory

```bash
git clone git@bitbucket.org:tenantcloud/terraform-fargate-www.tenantcloud.com.git
cd terraform-fargate-www.tenantcloud.com
```

Create new environment file from example

```bash
cp env/example.tfvars env/app.tfvars
vim env/app.tfvars
```

## Check and run

Initialize terraform project

```bash
terraform init
```

Verify your configuration

```bash
terraform plan --var-file env/app.tfvars
```

If all is right apply configuration

```bash
terraform apply --auto-approve --var-file env/app.tfvars
```

## Destroy

To destroy configuration run command

```bash
terraform destroy --auto-approve --var-file env/app.tfvars
```
