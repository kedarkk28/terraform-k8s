# Terraform — Simple Kubernetes Infrastructure

## 1. Clone / copy the files
cd terraform-k8s

## 2. Copy and edit variables
cp terraform.tfvars.example terraform.tfvars

## 3. Initialise providers
terraform init

## 4. Preview the plan
terraform plan

## 5. Apply
terraform apply

### File structure

terraform-k8s/
├── providers.tf
├── variables.tf
├── main.tf
├── outputs.tf
└── terraform.tfvars