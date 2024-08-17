#!/bin/bash

# List all AKS clusters in the Azure subscription
az aks list --output table

echo "Listed all AKS clusters in your subscription."