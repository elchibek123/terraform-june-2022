#!/bin/bash

sudo rm -rf .terraform
ENV = "$1"
sed -i ' ' - e "s|env|$ENV|" backend.terraform
terraform init
echo "Environment is set to $ENV"
terraform plan -var-file=$ENV.tfvars
terraform apply -var-file=$ENV.tfvars