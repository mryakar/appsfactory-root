#!/bin/bash
docker build --tag=config-service:latest ../config-service
docker build --tag=eureka-service:latest ../eureka-service
docker build --tag=gateway:latest ../gateway
docker build --tag=vm-provider:latest ../vm-provider
docker build --tag=region-provider:latest ../region-provider
docker build --tag=insurance-premium-provider:latest ../insurance-premium-provider
