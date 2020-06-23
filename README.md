# AWS ECS Fargate using Terraform

![terraform v0.12.x](https://img.shields.io/badge/terraform-v0.12.x-brightgreen.svg)

## Usage

Create `main.tf` file

```HCL
module "fargate" {
  source  = "BrunIF/fargate/ecs"
  version = "0.1.1"

  az_count = 2
  app_image = nginx:latest
  app_count = 1
  app_count_min = 1
  app_count_max = 5
  health_check_path = "/"
  fargate_cpu = 512
  fargate_memory = 1024
  dns_zone_id = "Route53ID"
  domain_name = "example.com"
  project = "example"
}
```

## Check and run

Initialize terraform project

```bash
terraform init
```

Verify your configuration

```bash
terraform plan
```

If all is right apply configuration

```bash
terraform apply --auto-approve
```

## Destroy

To destroy configuration run command

```bash
terraform destroy --auto-approve
```
