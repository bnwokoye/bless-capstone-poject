#!/bin/bash

set -x

openssl genrsa -out  bless-capstone-project1-pod-user.key 2048
openssl req -new -key bless-capstone-project1-pod-user.key -out bless-capstone-project1-pod-user.csr -subj "/CN=bless-capstone-project1-pod-user/O=bless-capstone-project1"

# Replace the CSR in the csr.yaml
CSR=$(cat bless-capstone-project1-pod-user.csr | base64 | tr -d '\n')
sed -i "s/__CSR___/${CSR}/g" bless-capstone-project1-pod-user-csr.yaml
