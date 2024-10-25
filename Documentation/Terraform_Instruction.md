Azure Terraform setup:

Step 1. Setting up the Azure CLI.

- First, you will to setup the Azure CLI to be able to run Terraform scripts. You'll start by clicking on the first icon to the right of the search bar in the Azure Portal.

![Github Logo](/Screenshots/cli.png)

Step 2. Setting up the configuration files.

- Thankfully, Azure CLI makes our life easier by pre-installing Terraform for you! So, all you need to do is create a directory that'll be dedicated to your terraform scripts. This folder is typically named after a module, in this case Terraform is fine for testing.  Next you will create a file within this directory that is the config file. This file will use the .tf file extension. You can name this whatever you like for our file we went with lab.tf for ours.
        
Step 3. Initialize & Plan!
        
- Now we're going to initialize our folder. It is as easy as it sounds. You'll want to navigate to the folder you just created and run a simple command!
 
 **terraform init**
 - Now that you initialized your directory and have created your terraform file, lets kick off a test run by running the following command!

**terraform plan**
- Terraform plan allows you to test for any errors in your script before pushing it to production!

Step 4. Apply!
- Lastly, it's time to apply our terraform script! Running this command will push your script up to azure and begin creating the resources:

**terraform apply**

![Github Logo](/Screenshots/terraformapply1.png)
![Github Logo](/Screenshots/terraformapply2.png)

- You may run into the warning like depicted in the screenshot below, if you do, don't worry. Some Azure resources take longer than others to create, but because terraform is a Declarative programming language you can run the apply command again and it'll pick up where it left off!

![Github Logo](/Screenshots/warningterraform.png)

Step 5. Success!
- You've successfully created your first terraform script and applied it to your azure environment! Congrats on this amazing feat!

![Github Logo](/Screenshots/susccessterraform.png)
![Github Logo](/Screenshots/terraform-gui.PNG)

