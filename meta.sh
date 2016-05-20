#!/bin/bash
amiid=$(wget -q -O - 169.254.169.254/latest/meta-data/ami-id)
ebsblock=$(wget -q -O - 169.254.169.254/latest/meta-data/block-device-mapping/ami)
hostname=$(wget -q -O - 169.254.169.254/latest/meta-data/hostname)
iamrolepolicy=$(wget -q -O - 169.254.169.254/latest/meta-data/iam/info)
iamroleattached=$(wget -q -O - 169.254.169.254/latest/meta-data/iam/security-credentials/ec2codedep) 
instanceid=$(wget -q -O - 169.254.169.254/latest/meta-data/instance-id)
instancetype=$(wget -q -O - 169.254.169.254/latest/meta-data/instance-type)
localhostname=$(wget -q -O - 169.254.169.254/latest/meta-data/local-hostname)
privateip=$(wget -q -O - 169.254.169.254/latest/meta-data/local-ipv4) 
macaddress=$(wget -q -O - 169.254.169.254/latest/meta-data/mac)
eni=$(wget -q -O - 169.254.169.254/latest/meta-data/network/interfaces/macs/$macaddress/interface-id)
securitygroupid=$(wget -q -O - 169.254.169.254/latest/meta-data/network/interfaces/macs/$macaddress/security-group-ids)
securitygroupattached=$(wget -q -O - 169.254.169.254/latest/meta-data/network/interfaces/macs/$macaddress/security-groups)
subnetid=$(wget -q -O - 169.254.169.254/latest/meta-data/network/interfaces/macs/$macaddress/subnet-id)
subnetcidr=$(wget -q -O - 169.254.169.254/latest/meta-data/network/interfaces/macs/$macaddress/subnet-ipv4-cidr-block)
vpcid=$(wget -q -O - 169.254.169.254/latest/meta-data/network/interfaces/macs/$macaddress/vpc-id)
vpccidr=$(wget -q -O - 169.254.169.254/latest/meta-data/network/interfaces/macs/$macaddress/vpc-ipv4-cidr-block)
az=$(wget -q -O - 169.254.169.254/latest/meta-data/placement/availability-zone)
virtualizationtype=$(wget -q -O - 169.254.169.254/latest/meta-data/profile/default-hvm)
publicip=$(wget -q -O - 169.254.169.254/latest/meta-data/public-ipv4)
keypairattached=$(wget -q -O - 169.254.169.254/latest/meta-data/public-keys/) 
keypairname=$(echo $keypairattached | sed 's/0=//')
volumesize=$(df -hT | grep '/dev/x.' | awk '{print $3}')
hash=$(echo "#######")

echo -e "\n\n\n"
echo "###################################"
echo "###  Instance Meta-data Script  ###"
echo "###################################"
echo -e "\n\n\n"
echo "AMI ID 					$hash 		$amiid" 
echo "EBS BLOCK 			 	$hash			$ebsblock with size $volumesize" 
echo "HOST NAME 				$hash     		$hostname" 
echo "Instance ID 				$hash			$instanceid"
echo "Instance Type 				$hash			$instancetype" 
echo "Local Hostname 				$hash			$localhostname" 
echo "Private IP 				$hash 		$privateip"
echo "Public IP 				$hash			$publicip"
echo "MAC Address 				$hash			$macaddress"
echo "Elastic Network Interface 		$hash			$eni"
echo "Security Group ID 			$hash			$securitygroupid"
echo "Security Group Attached 		$hash			$securitygroupattached"
echo "Subnet ID 				$hash			$subnetid"
echo "Subnet CIDR 				$hash			$subnetcidr"
echo "VPC ID 					$hash			$vpcid"
echo "VPC CIDR 				$hash			$vpccidr"
echo "Availability Zone 			$hash			$az"
echo "Virtualization Type			$hash			$virtualizationtype" 
echo "KeyPair Name 				$hash			$keypairname"
echo "IAM policiy attached" 			$hash 			$iamrolepolicy"
echo -e "\n\n\n\\n"
