☁️✨ Terraform Azure Storage Automation (Dev & Prod) ✨☁️

This Terraform project automates the creation of Azure Resource Group, Storage Account, and Storage Container using modular Terraform configuration.
It demonstrates reusable modules, dev/prod environments, and the use of Terraform Output Block to display important resource info.

🧭 Architecture Diagram

🌍 Azure Cloud
└── 🗂️ Resource Group (demo-rg)
  └── ☁️ Storage Account (demostrg)
    └── 📁 Storage Container (democntr)

🔹 Explanation:

🗂️ Resource Group is the parent container

☁️ Storage Account is created inside the Resource Group

📁 Container resides inside the Storage Account

✅ Modules are reusable for clean code

🌱 Separate dev and prod environments with independent states

📂 Project Overview
Resources Created

🗂️ Azure Resource Group

☁️ Azure Storage Account

📁 Azure Storage Container

Modules Used

🛠️ azurerm_resource_group

🛠️ azurerm_storage_account

🛠️ azurerm_storage_container

🧱 Root Module Configuration
module "azurerm-rg" {
  source      = "../../Module/azurerm_resource_group"
  rg-name     = "demo-rg"
  rg-location = "CentralIndia"
}

module "azurerm-strg" {
  source        = "../../Module/azurerm_storage_account"
  strg-name     = "demostrg"
  rg-name       = "demo-rg"
  strg-location = "CentralIndia"
}

module "azurerm-cntr" {
  source    = "../../Module/azurerm_storage_container"
  cntr-name = "democntr"
  strg-id   = module.azurerm-strg.strg-id
}

⚙️ Folder Structure
Root/
├── main.tf          # Calls all modules
├── provider.tf      # Azure provider configuration
├── variables.tf     # Input variables
├── outputs.tf       # Output block definitions
└── README.md        # Documentation

Module/
├── azurerm_resource_group/
│   └── main.tf
├── azurerm_storage_account/
│   └── main.tf
└── azurerm_storage_container/
    └── main.tf

⚙️ Prerequisites

✅ Terraform installed

✅ Azure CLI installed and logged in (az login)

✅ Active Azure subscription

🪜 Steps to Deploy

1️⃣ Clone repository:

git clone https://github.com/Pjaisw1103/Output_Block.git
cd Output_Block


2️⃣ Initialize Terraform:

terraform init


3️⃣ Validate configuration:

terraform validate


4️⃣ Plan deployment:

terraform plan


5️⃣ Apply configuration:

terraform apply


6️⃣ View outputs:

Outputs:
rg_name              = "demo-rg"
storage_account_name = "demostrg"
container_name       = "democntr"

📤 Example Output Block
output "rg_name" {
  value       = module.azurerm-rg.rg-name
  description = "Name of the Resource Group"
}

output "storage_account_name" {
  value       = module.azurerm-strg.strg-name
  description = "Name of the Storage Account"
}

output "container_name" {
  value       = module.azurerm-cntr.cntr-name
  description = "Name of the Storage Container"
}

🧹 Destroy Resources
terraform destroy

👩‍💻 Author

Priya Jaiswal
🌐 Terraform | ☁️ Azure | 🚀 DevOps Enthusiast
📘 GitHub: Pjaisw1103

💬 “Automating Cloud Infrastructure with Terraform Modules!”