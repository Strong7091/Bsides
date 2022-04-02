Manual Azure setup: 

Step 1. [Create an Azure Subscription](https://azure.microsoft.com/en-us/free/) 

- First, you will need a subscription. This subscription will be tied to an email address and used to build the resources within. Azure offers a $200 credit for the first 30 days of use and is plenty of time to test and understand the concepts. Click [here](https://azure.microsoft.com/en-us/free/) to begin this process.

![Github Logo](/Screenshots/Azure_free.PNG)

Step 2. [Create a Resource Group](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal) 

- The next thing is to create a resource group. The resource group is where all of our resources (VM's, V-Net, and many others) will be kept within the subscription. It is often best practice to create a resource group for different environments. Maybe one is for your production environment while the other is for the development environment. In this case this resource group will be for our lab. So make sure to place everything going forward in this resource group. After logging into your new Azure Portal go ahead and click on the resource group image and create one. Keep in mind latency and trying to keep the data center as close to your location as possible. 

![Github Logo](/Screenshots/resource.PNG)

Step 3. [Create a V-Net](https://docs.microsoft.com/en-us/azure/virtual-network/quick-create-portal) 

- The first thing we want to create in our resource group is the virtual network. This will allow our resources within to communicate and create a virtual entity. Search at the top of the portal for virtual network and create a new one. Keep in mind to link it to the resource group. 

![Github Logo](/Screenshots/VNET_Create.PNG)

- You can use the default address space given during creation as shown below.

![Github Logo](/Screenshots/VNET_IP.PNG)

- The following image displays the overview of the newly created virtual network as an example.

![Github Logo](/Screenshots/VNET_Overview.PNG)

Step 4. [Create a Network Security Group](https://docs.microsoft.com/en-us/azure/virtual-network/tutorial-filter-network-traffic) 

- Next we want to create a a Network Security Group. We will create rules to allow or diallow traffic into our network and out of our network. For instance in the examples below we created two rules inbound so our Public IP's could have ingress into the network and establish connections to the VM's. You can use a great website called [IPChicken](https://ipchicken.com/) to quickly retrieve it. The screenshots belopw show an overview of how we set the NSG up. Just like previous resources fill in the relevant information. 

![Github Logo](/Screenshots/NSG_Create.PNG)

- The following NSG rules show the two inbound rules we created for the NSG. Make sure to use your Public IP. 

![Github Logo](/Screenshots/NSG_Rules.PNG)

Step 5. [Create Windows Virtual Machine](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-portal) 

- Now its time to create our Windows VM. When creating Vm's pay close attention to the amount of cpu, ram, disk space allocated. With Azure this is not a CapEx but OpEx. You will pay for what you use. For this lab and testing purposes keep it small and simple. For our Windows VM we used "Standard DS1 v2 (1 vcpu, 3.5 GiB memory)". This kept cost minimmal. 

<ins>A couple gotcha's to keep in mind:</ins> 
- Make sure to not enable advanced DDOS protection. This will increase your monthly cost. 
- Always check the checkboxes for deleting resources tied to the VM. Example: Delete disk with VM, Delete NIC when VM is deleted, etc. This will help keep everything tidy in the future. 
- Create a new Public IP and make it dynamic for the time being. This will automatically provision a public IP address to the VM. When you first turn the vm off it will prompt you to keep the PUBIP the same.

![Github Logo](/Screenshots/Windows_Overview.PNG)

Step 6. [Create Linux Virtual Machine](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-portal)

- Similair to the Windows VM the setup is almost identical. Just keep in mind SSH will be what you use to access the VM as oppose to RDP. 

![Github Logo](/Screenshots/Ubuntu_Overview.PNG)

Step 7. [Associate NIC's to NSG](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-network-interface)

- In the search box at the top of the portal, enter network interfaces in the search box. When network interfaces appear in the search results, select it.
- Select the network interface in the list that you want to associate a network security group to, or dissociate a network security group from.
- Select Network security group under SETTINGS.
- Select Edit.
- Select Network security group and then select the network security group you want to associate to the network interface, or select None, to dissociate a network   security group.
- Select Save.

![Github Logo](/Screenshots/NSG_NIC.PNG)

Step 8. [Create a Log Analytics Workspace](https://docs.microsoft.com/en-us/azure/azure-monitor/logs/quick-create-workspace)

- The Log Analytics workspace is used to collect data/logs from the VM's. Simply search for the service in the Portal and create. This will be used later in the [Microsoft Senitinel Setup Instructions](Documentation/Microsoft_Sentinel_Setup_Instruction.md).

![Github Logo](/Screenshots/LogAnayltics_Create.PNG)
