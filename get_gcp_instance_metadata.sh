#!/bin/bash

# ScriptName: get_gcp_instance_metadata.sh
# Author: Your Name
# Description: This script retrieves and displays various metadata from a GCP instance.

# Function to fetch metadata
fetch_metadata() {
  curl -s -H "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/$1"
}

# Fetching metadata
instance_id=$(fetch_metadata "instance/id")
instance_name=$(fetch_metadata "instance/name")
instance_type=$(fetch_metadata "instance/machine-type" | awk -F/ '{print $NF}')
zone=$(fetch_metadata "instance/zone" | awk -F/ '{print $NF}')
internal_ip=$(fetch_metadata "instance/network-interfaces/0/ip")
external_ip=$(fetch_metadata "instance/network-interfaces/0/access-configs/0/external-ip")
project_id=$(fetch_metadata "project/project-id")
project_number=$(fetch_metadata "project/numeric-project-id")
hostname=$(fetch_metadata "instance/hostname")

# Displaying metadata
echo "###################################"
echo "###  GCP Instance Meta-data Script  ###"
echo "###################################"
echo ""
echo "Instance ID:                  $instance_id"
echo "Instance Name:                $instance_name"
echo "Instance Type:                $instance_type"
echo "Zone:                         $zone"
echo "Internal IP:                  $internal_ip"
echo "External IP:                  $external_ip"
echo "Project ID:                   $project_id"
echo "Project Number:               $project_number"
echo "Hostname:                     $hostname"

