# This file is auto-loaded by Terraform. Fill in your values directly.

tenant_id = ""
subscription_id = ""
# Optional if you authenticate with Azure CLI (`az login`).
client_id            = ""
client_secret        = ""

location             = "westeurope"
prefix               = "demo"

hub_vnet_cidr        = ["10.0.0.0/16"]
hub_subnet_cidr      = ["10.0.1.0/24"]
spoke_vnet_cidr      = ["10.1.0.0/16"]
spoke_subnet_cidr    = ["10.1.1.0/24"]

admin_username       = "azureuser"
admin_ssh_public_key_path = "C:/Users/khalil/.ssh/terraform-azure-hubspoke.pub"

# Set this to your current public IP/32 for secure SSH to hub VM.
hub_ssh_source_cidr  = "0.0.0.0/0"

vm_size              = "Standard_B1s"

# Optional: set a globally unique name to avoid storage account naming collisions.
# Must be 3-24 chars, lowercase letters and numbers only.
tfstate_storage_account_name = "demoitfstate"

tfstate_container_name = "tfstate"
tfstate_key            = "hubspoke.terraform.tfstate"
