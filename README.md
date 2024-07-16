# Cloud Instance Metadata Scripts

This repository contains bash scripts to retrieve and display metadata from instances running on AWS, GCP, and Azure. These scripts fetch various details about the instance and print them in a formatted manner.

## Scripts

1. **get_aws_instance_metadata.sh**
2. **get_gcp_instance_metadata.sh**
3. **get_azure_instance_metadata.sh**

### Prerequisites

- `curl` installed on your instance.
- Appropriate permissions to access instance metadata.

### Usage


```bash

1. AWS Instance Metadata

This script fetches metadata from an AWS instance.

chmod +x get_aws_instance_metadata.sh
./get_aws_instance_metadata.sh


2. GCP Instance Metadata
This script fetches metadata from a GCP instance.

chmod +x get_gcp_instance_metadata.sh
./get_gcp_instance_metadata.sh


3. Azure Instance Metadata
This script fetches metadata from an Azure instance.

chmod +x get_azure_instance_metadata.sh
./get_azure_instance_metadata.sh


Script Details
get_aws_instance_metadata.sh
This script retrieves metadata such as instance ID, instance type, public and private IP addresses, and more from an AWS instance using the instance metadata service.

get_gcp_instance_metadata.sh
This script retrieves metadata such as instance ID, machine type, zone, and more from a GCP instance using the GCP metadata server.

get_azure_instance_metadata.sh
This script retrieves metadata such as VM ID, VM name, VM size, location, and more from an Azure instance using the Azure instance metadata service.
