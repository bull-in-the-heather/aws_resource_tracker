#!/bin/bash

###########
# 
# This script will report AWS resource usage
# 
#
###########

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# lists S3 buckets
echo "LIST OF S3 BUCKETS"
aws s3 ls >> resourceTracker.txt && cat resourceTracker.txt

# lists EC2 instances
echo "LIST OF EC2 INSTANCES"
aws ec2 describe-instances | grep InstanceId >> resourceTracker.txt && cat resourceTracker.txt

# lists Lambda Functions
echo "LIST OF LAMBDA FUNCTIONS"
aws lambda list-functions | grep FunctionName >> resourceTracker.txt && cat resourceTracker.txt

# lists IAM users
echo "LIST OF ALL IAM USERS"
aws iam list-users | grep UserName >> resourceTracker.txt && cat resourceTracker.txt

