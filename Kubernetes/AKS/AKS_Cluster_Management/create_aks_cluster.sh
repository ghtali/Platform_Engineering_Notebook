#!/bin/bash

# Parameters for the AKS cluster
RESOURCE_GROUP="myResourceGroup"
CLUSTER_NAME="myAKSCluster"
NODE_COUNT=3
ADDONS="monitoring"

# Create the AKS cluster
az aks create \
  --resource-group $RESOURCE_GROUP \
  --name $CLUSTER_NAME \
  --node-count $NODE_COUNT \
  --enable-addons $ADDONS \
  --generate-ssh-keys

echo "AKS cluster '$CLUSTER_NAME' created successfully in resource group '$RESOURCE_GROUP' with $NODE_COUNT nodes."