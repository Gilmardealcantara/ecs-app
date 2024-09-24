# ecs-app
ECS example app

### Helpful commands
```sh
export AWS_DEFAULT_PROFILE=linuxtips

terraform init -backend-config=environment/dev/backend.tfvars
terraform fmt --recursive
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars

cd terraform
terraform-docs markdown table  . >> ../README.md
```

### ECR
```sh
aws ecr get-login-password --region us-east-1 --profile linuxtips | docker login --username AWS --password-stdin 050451389665.dkr.ecr.us-east-1.amazonaws.com
docker pull fidelissauro/chip:v2
docker tag fidelissauro/chip:v2 050451389665.dkr.ecr.us-east-1.amazonaws.com/linuxtips-ecs-cluster/chip:latest
docker push 050451389665.dkr.ecr.us-east-1.amazonaws.com/linuxtips-ecs-cluster/chip:latest
```

### lb cal

```sh 
 curl linuxtips-ecs-cluster-ingress-627259266.us-east-1.elb.amazonaws.com/system -H "Host: chip.linuxtips.demo"
 # {"hostname":"ip-10-0-23-55.ec2.internal","cpus":2,"os":"","hypervisor":"","memory":{"alloc_MiB":9,"system_MiB":0,"gc":5}}%
 ```
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.68.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_service"></a> [service](#module\_service) | /Users/gilmar.alcantara/courses/linuxtips/ecs-service-module | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.ecs_task_execution_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_ssm_parameter.listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.private_subnet_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.private_subnet_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.private_subnet_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.vpc_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capabilities"></a> [capabilities](#input\_capabilities) | n/a | `any` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `any` | n/a | yes |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | n/a | `any` | n/a | yes |
| <a name="input_profile"></a> [profile](#input\_profile) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_service_cpu"></a> [service\_cpu](#input\_service\_cpu) | n/a | `any` | n/a | yes |
| <a name="input_service_healthcheck"></a> [service\_healthcheck](#input\_service\_healthcheck) | n/a | `any` | n/a | yes |
| <a name="input_service_hosts"></a> [service\_hosts](#input\_service\_hosts) | n/a | `any` | n/a | yes |
| <a name="input_service_launch_type"></a> [service\_launch\_type](#input\_service\_launch\_type) | n/a | `any` | n/a | yes |
| <a name="input_service_memory"></a> [service\_memory](#input\_service\_memory) | n/a | `any` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | n/a | `any` | n/a | yes |
| <a name="input_service_port"></a> [service\_port](#input\_service\_port) | n/a | `any` | n/a | yes |
| <a name="input_service_task_count"></a> [service\_task\_count](#input\_service\_task\_count) | n/a | `any` | n/a | yes |
| <a name="input_ssm_listener"></a> [ssm\_listener](#input\_ssm\_listener) | n/a | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_1"></a> [ssm\_private\_subnet\_1](#input\_ssm\_private\_subnet\_1) | n/a | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_2"></a> [ssm\_private\_subnet\_2](#input\_ssm\_private\_subnet\_2) | n/a | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_3"></a> [ssm\_private\_subnet\_3](#input\_ssm\_private\_subnet\_3) | n/a | `any` | n/a | yes |
| <a name="input_ssm_vpc_id"></a> [ssm\_vpc\_id](#input\_ssm\_vpc\_id) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
