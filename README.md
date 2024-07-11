# ec2-meta-data-script

This script is only for AWS EC2 instances.

It is used to get instance meta data and it will provide you information about instance.

Sample Output:

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instance Meta-data Script</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 600px;
            margin: 0 auto;
        }
        h1 {
            text-align: center;
            font-size: 24px;
        }
        .meta-data {
            margin-top: 20px;
        }
        .meta-data div {
            margin: 5px 0;
            padding: 5px;
            border-bottom: 1px solid #eaeaea;
        }
        .meta-data div:last-child {
            border-bottom: none;
        }
        .label {
            font-weight: bold;
            color: #333333;
        }
        .value {
            color: #666666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Instance Meta-data Script</h1>
        <div class="meta-data">
            <div><span class="label">AMI ID:</span> <span class="value">ami-0ba652e7a818f475f</span></div>
            <div><span class="label">EBS BLOCK:</span> <span class="value">/dev/xvda with size 40G</span></div>
            <div><span class="label">HOST NAME:</span> <span class="value">ip-2.2.2.2.ap-southeast-1.compute.internal</span></div>
            <div><span class="label">Instance ID:</span> <span class="value">i-0b0bae9651da3ee1d</span></div>
            <div><span class="label">Instance Type:</span> <span class="value">t2.small</span></div>
            <div><span class="label">Local Hostname:</span> <span class="value">ip-2.2.2.2.ap-southeast-1.compute.internal</span></div>
            <div><span class="label">Private IP:</span> <span class="value">2.2.2.2</span></div>
            <div><span class="label">Public IP:</span> <span class="value">1.1.1.1</span></div>
            <div><span class="label">MAC Address:</span> <span class="value">06:cb:fb:e5:80:ee</span></div>
            <div><span class="label">Elastic Network Interface:</span> <span class="value">eni-09d4d86364cd07a83</span></div>
            <div><span class="label">Security Group ID:</span> <span class="value">sg-0abe779c0b9bb637e</span></div>
            <div><span class="label">Security Group Attached:</span> <span class="value">test-hostname</span></div>
            <div><span class="label">Subnet ID:</span> <span class="value">subnet-012e769ea33ece4ef</span></div>
            <div><span class="label">Subnet CIDR:</span> <span class="value">172.0.0.0/20</span></div>
            <div><span class="label">VPC ID:</span> <span class="value">vpc-03d770821a5bec3b5</span></div>
            <div><span class="label">VPC CIDR:</span> <span class="value">172.0.0.0/16</span></div>
            <div><span class="label">Availability Zone:</span> <span class="value">ap-southeast-1a</span></div>
            <div><span class="label">KeyPair Name:</span> <span class="value">dev</span></div>
        </div>
    </div>
</body>
</html>

