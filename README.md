# Deploy an Azure Web App using Terraform

This project sets up an Azure Linux Web App using a Docker container image. It provisions the required Azure resources, including:

- Resource Group: Organizes all related resources.

- Service Plan: Defines the hosting environment for the web app.

- Linux Web App: Deploys a web application running on a Docker container.

Deployment Steps:

1- Clone this repository.

2- Update terraform.tfvars with your values.

3- Run:

`terraform init`

`terraform plan`

`terraform apply`


4- Access the web app using the output URL.

Outputs
- Web App URL: Accessible via HTTPS.

Enjoy seamless deployment of your Dockerized application on Azure!
