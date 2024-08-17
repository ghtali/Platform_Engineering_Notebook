#!/bin/bash

# Parameters for the GKE cluster
CLUSTER_NAME="my-gke-cluster"
NUM_NODES=3
ZONE="us-central1-a"

# Create the GKE cluster
gcloud container clusters create $CLUSTER_NAME \
  --num-nodes=$NUM_NODES \
  --zone=$ZONE

echo "GKE cluster '$CLUSTER_NAME' created successfully with $NUM_NODES nodes in zone '$ZONE'."