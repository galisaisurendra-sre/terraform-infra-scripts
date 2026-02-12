## Init command

#### terraform init -backend-config="bucket=app-bucket-statefile" -backend-config="key=preprod/app-prod.tfstate"

## Validate command

#### terraform validate -var-file=preprod.tfvars

## Plan command

#### terraform plan -var-file=preprod.tfvars

## Apply commnand

#### terraform apply -var-file=preprod.tfvars

## Destroy command

#### terraform destroy -var-file=preprod.tfvars

# Incase the statefile is locked use below to unlock

surendraaswini@Surendras-MacBook-Air s3-bucket % terraform apply -var-file=preprod.tfvars
Acquiring state lock. This may take a few moments...
╷
│ Error: Error acquiring the state lock
│ 
│ Error message: operation error S3: PutObject, https response error StatusCode: 412, RequestID: 5V4GP32F39D1CYGM, HostID:
│ 1R+aOFZ4z7QFOuxo1JyRszY9cJJOqi03vqRfhZEfRCU1oOa1gwrQN2HQig1B8PBTX722QqooSNM=, api error PreconditionFailed: At least one of the
│ pre-conditions you specified did not hold
│ Lock Info:
│   ID:        37972047-066d-89cf-2b15-a13aee4d0550
│   Path:      app-bucket-statefile/preprod/app-prod.tfstate
│   Operation: OperationTypeApply
│   Who:       surendraaswini@Surendras-MacBook-Air.local
│   Version:   1.14.4
│   Created:   2026-02-12 13:56:55.8066 +0000 UTC
│   Info:      
│ 
│ 
│ Terraform acquires a state lock to protect the state from being written
│ by multiple users at the same time. Please resolve the issue above and try
│ again. For most commands, you can disable locking with the "-lock=false"
│ flag, but this is not recommended.
╵

#### terraform force-unlock < Lock ID >