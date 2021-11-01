#!/bin/bash

kubectl apply -f namespace-limit.yaml

kubectl apply -f db-persistent-volume.yaml
kubectl apply -f db-persistent-volume-claim.yaml

kubectl apply -f db-secret.yaml
kubectl apply -f db-configmap.yaml

kubectl apply -f db-deployment.yaml
kubectl apply -f db-service.yaml

kubectl apply -f app-deployment.yaml
kubectl apply -f app-service.yaml
