#!/bin/bash
set -x
export AWS_DEFAULT_REGION=us-east-1
SERVICE_NAME=jenkins-service
ECS_CLUSTER=Jenkins
IMAGE_NAME=204252935480.dkr.ecr.us-east-1.amazonaws.com/react-jenkins:latest

#deploy () {
0install add jq https://apps.0install.net/utils/jq.xml
export PATH=/var/lib/jenkins/bin:$PATH
#sleep 20
whoami
echo "Deploying to Service"
ecs-deploy -c $ECS_CLUSTER -n $SERVICE_NAME -i $IMAGE_NAME -t 300 --max-definitions 10
#aws ecs update-service --cluster Jenkins  --service jenkins-service --task-definition jenkince-task 
#}
#deploy
