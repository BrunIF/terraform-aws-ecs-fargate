variable "access_key" {
  description = "AWS access key"
  type        = string
  default     = ""
}

variable "secret_key" {
  description = "AWS secret key"
  type        = string
  default     = ""
}

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-west-2"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = ""
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = "1"
}

variable "app_count_min" {
  description = "Minimum number of docker containers to run"
  default     = "1"
}

variable "app_count_max" {
  description = "Maximum number of docker containers to run"
  default     = "5"
}


variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "512"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}

variable "dns_zone_id" {
  default = ""
}

variable "certificate_arn" {
  description = "Certificate ARN"
  default     = ""
}

variable "domain_name" {
  default = ""
}

variable "project" {
  description = "Name of project (Max 10 character without special)"
  default     = "www"
}

