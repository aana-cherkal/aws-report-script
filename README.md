# AWS Resource Reporter

This Bash script generates a report of your AWS resources, including **S3 buckets, EC2 instances, Lambda functions, and IAM users**. It is designed to automate resource monitoring by running at a scheduled time using **crontab**.  

The automation is set up via a crontab entry that executes the script every day at **9 AM** and saves the output to a specified file on your Windows system:

```
0 9 * * * /home/aana/aws_resource_report.sh > "/mnt/c/Users/MY PC/Desktop/dev/report.txt.txt" 2>&1
```


This ensures that your AWS resource report is updated daily, providing a clear overview of your infrastructure in a single text file.


## Sample Output 
```
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
```
