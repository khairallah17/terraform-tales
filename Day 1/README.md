# Day 1: Creating an EC2 Instance with Terraform

Welcome to the first day of my Terraform Tales journey! In this tutorial, we'll walk through the process of using Terraform to create an Amazon EC2 instance (t2.micro) on AWS and installing an image on it.

## Prerequisites

Before getting started, make sure you have the following prerequisites set up:
- ### AWS Account : 
    Create an AWS account if you don't have one already. Ensure you have the necessary access and security credentials to provision resources.
- ### Terraform Installed :
    Install Terraform on your local machine. You can find the installation guide [here](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

## Steps
- ### Step 1: Configure AWS Credentials
    to interact with AWS from Terraform, you'll need to set up your AWS credentials. If you haven't already configured them, you can use the AWS CLI to do so, but before you need to install AWS CLI from [here](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html), then run this command:
    ```
    aws configure
    ```

- ### Step 2 : Create your first terraform file
    to interact with AWS using terraform, we need to create a terraform file **.tf** and write the script to run it on our aws.

- ### Step 3 : Create EC2 instance
    Apply the Terraform configuration to create the EC2 instance:
    ```
    terraform init
    ```
    Terraform will show you a plan of the actions it will take. Type yes when prompted to confirm the creation of resources.
- ### Step 4 : Launch EC2 instance
    Launch the Terraform configuration to create the EC2 instance:
    ```
    terraform apply
    ```
    `it is important to choose the right ami with the right location, because there are some ami unavaible in some locations`.
    Finally check your aws interface to check if the ec2 instance is really runing. 

## Cleanup
To avoid incurring unnecessary costs, remember to clean up the resources after you're done with this tutorial:
```
terraform destroy
```
Terraform will show you a plan of the actions it will take. Type **yes** when prompted to confirm the deletion of resources.

## Conclusion
Congratulations! You've successfully created an EC2 instance using Terraform and installed an image on it. This is just the beginning of our Terraform journey, and there's so much more to explore and learn.

Stay tuned for more exciting Terraform Tales as we dive deeper into the world of Infrastructure as Code! If you have any questions or feedback, don't hesitate to reach out.
