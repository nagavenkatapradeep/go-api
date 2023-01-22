#!/bin/bash
export DB_HOST=ec2-3-83-190-116.compute-1.amazonaws.com
export DB_USER=xxxxx
export DB_PASSWORD=xxxxxxxx
export DB_NAME=go-api-dev

/opt/app/dev/linux-go-api >> /var/log/dev.log