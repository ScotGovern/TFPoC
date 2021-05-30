This is terraform project to create three tier setup of an application in AWS cloud. <br />
Below is the approach or factors considered while creating this application.

**a. High Availalibity** :- Two availability zones eu-west-1b and eu-west-1c have been used within AWS region :- eu-west-1.<br />
**b. Scalability** :- Project is using ASG (Auto Scaling Group) feature of EC2. So depending on load we can get max 10 EC2 instances<br />
**c. Load Balancing** :- Elastic Load Balancer has been used for catering load among EC2 instances.<br />
**d. Security** :- Security groups has been used to allow/deny traffic from internet to EC2,VPC,ELB.<br />
                   Also NACL has been used on VPC,Network level for more security. <br/>   

After sucessfully producing below steps one can see below setup.

1. ELB,ASG,EC2 :- **Web Layer**<\br>
2. VPC,two availability zones,4 Public subnets(for EC2,ELB,ASG), 2 private subnets(for DB),NAT,IGW **Network Layer**<\br>


**Steps to reproduce**

**1.** Refer this another github repo to [initialize the setup](https://github.com/ScotGovern/initialize-setup)<br />
**2.** Clone this repository.<br />
**3.** Execute below sets of commands from repository cloned location:-<br />

**i)** export env=dev (or test/prod)<br />
**ii)** terraform init -backend-config=config/backend-${env}.conf -backend=true<br />
**iii)** terraform apply -var-file=config/${env}.tfvars<br />



**Verification :-**<br />
Make sure all resources are created in AWS console<br />
After app gets created sucessfully grab the DNS of the ELB from AWS console and verify html page is coming.
