#!/bin/bash

################
# Author: Aahana
# Date: 6th-September
#
# Version: v1
#
# This script will report AWS resource usage
#################

# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM Users

set -x

# list s3 buckets
echo "Print list of s3 buckets:"
aws s3 ls

# list EC2 instances
echo "Print list of ec2 instances:"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print list of lambda functions:"
aws lambda list-functions

# list IAM Users
echo "Print list of IAM users:"
aws iam list-users 
