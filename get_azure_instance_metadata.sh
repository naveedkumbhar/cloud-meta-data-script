#!/bin/bash

# ScriptName: get_azure_instance_metadata.sh
# Author: Your Name
# Description: This script retrieves and displays various metadata from an Azure instance.

# Function to fetch metadata
fetch_metadata() {
  curl -s -H "Metadata: true" "http://169.254.169.254/metadata/instance/$1?api-version=2021-02-01&format=text"
}

# Fetching metadata
compute=$(fetch_metadata "compute")
network=$(fetch_metadata "network/interface/0/ipv4")

# Extracting compute metadata
vm_id=$(echo "$compute" | grep -oP '(?<=vmId: )\S+')
vm_name=$(echo "$compute" | grep -oP '(?<=name: )\S+')
vm_size=$(echo "$compute" | grep -oP '(?<=vmSize: )\S+')
zone=$(echo "$compute" | grep -oP '(?<=zone: )\S+')
location=$(echo "$compute" | grep -oP '(?<=location: )\S+')
subscription_id=$(echo "$compute" | grep -oP '(?<=subscriptionId: )\S+')
resource_group=$(echo "$compute" | grep -oP '(?<=resourceGroupName: )\S+')

# Extracting network metadata
private_ip=$(echo "$network" | grep -oP '(?<=ipAddress: )\S+')
public_ip=$(curl -s -H "Metadata: true" "http://169.254.169.254/metadata/instance/network/interface/0/ipv4/ipAddress/0/publicIpAddress?api-version=2021-02-01&format=text")

# Displaying metadata
echo "###################################"
echo "###  Azure Instance Meta-data Script  ###"
echo "###################################"
echo ""
echo "VM ID:                        $vm_id"
echo "VM Name:                      $vm_name"
echo "VM Size:                      $vm_size"
echo "Zone:                         $zone"
echo "Location:                     $location"
echo "Subscription ID:              $subscription_id"
echo "Resource Group:               $resource_group"
echo "Private IP:                   $private_ip"
echo "Public IP:                    $public_ip"

