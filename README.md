# ecs-app
ECS example app

### Helpful commands
```sh
export AWS_DEFAULT_PROFILE=linuxtips

terraform init -backend-config=environment/dev/backend.tfvars
terraform fmt --recursive
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars

```

### ECR
```sh
aws ecr get-login-password --region us-east-1 --profile linuxtips | docker login --username AWS --password-stdin 050451389665.dkr.ecr.us-east-1.amazonaws.com
docker pull fidelissauro/chip:v2
docker tag fidelissauro/chip:v2 050451389665.dkr.ecr.us-east-1.amazonaws.com/linuxtips-ecs-cluster/chip:latest
docker push 050451389665.dkr.ecr.us-east-1.amazonaws.com/linuxtips-ecs-cluster/chip:latest
```
