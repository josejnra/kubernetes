#!/bin/bash

kubectl apply -f db-secret.yaml
kubectl apply -f db-configmap.yaml

kubectl apply -f db-deployment.yaml
kubectl apply -f db-service.yaml

kubectl apply -f app-deployment.yaml
kubectl apply -f app-service.yaml
