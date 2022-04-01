This project was created to help get experience in cloud/security concepts from home. It is difficult to know where to begin and what to focus on. This lab is designed to help touch on many concepts in a safe environment and affordable practice. First we will begin explaining the resources utilized in Azure and how to set them up from a manual process. Then we will show how to autmoate the infrastructure using Hashicorp's Terraform platform in Azure.

Manual Azure setup: 

Step 1. Create an Azure Subscription - First, you will need a subscription. This subscription will be tied to an email address and used to build the resources within. Azure offers a $200 credit for the first 30 days of use and is plenty of time to test and understand the concepts. Click [here](https://azure.microsoft.com/en-us/free/) to begin this process.

![Github Logo](/Screenshots/Azure_free.PNG)

Step 2. Create a Resource Group - The next thing is to create a resource group. The resource group is where all of our resources (VM's, V-Net, and many others) will be kept within the subscription. It is often best practice to create a resource group for different environments. Maybe one is for your production environment while the other is for the development environment. In this case this resource group will be for our lab. So make sure to place everything going forward in this resource group. After logging into your new Azure Portal go ahead and click on the resource group image and create one. Keep in mind latency and trying to keep the data center as close to your location as possible. 

![Github Logo](/Screenshots/resource.PNG)
