#!/bin/bash

terraform init
customers = "apple google twitter"
for c in $customers; do
    echo "Selecting workspace: $c"
    terraform workspace select $c
    echo "Destroying $c"
    terraform destroy -var-file=$(terraform workspace show).tfvars -auto-approve
done
