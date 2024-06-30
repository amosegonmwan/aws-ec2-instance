# AWS EC2 Instance 

This README provides a step-by-step guide to launching an EC2 instance on Amazon Web Services (AWS) and performing various tasks including retrieving metadata and setting up a simple web server.

## Steps

### 1. Launch an EC2 Instance
- Open the Amazon EC2 console.
- Click on "Launch Instance".

### 2. Choose AMI
- Select the `Amazon Linux AMI`.

### 3. Choose Instance Type
- Select the `t2.micro` instance type (eligible for the free tier).

### 4. Configure Instance
- Ensure the instance is launched in the `default` VPC.
- Enable the option to assign a public IP address.

### 5. Add Tags
- Add a tag with Key: `Name` and Value: `Meta-data-exercise`.

### 6. Configure Security Group
- Create a security group named `meta-sg`.
- Allow `SSH` (port 22) and `HTTP` (port 80) traffic.

### 7. Launch the Instance
- Launch the instance.

### 8. Key Pair
- Use the key pair named `meta-key`. If not created, create it before launching the instance.

### 9. Connect to the Instance
- Connect to the instance via `SSH` using the public IP address, the username `ec2-user`, and the `meta-key.pem` file.
  ```bash
  ssh -i "meta-key.pem" ec2-user@<public-ip-address>


