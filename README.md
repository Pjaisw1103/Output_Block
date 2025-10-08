🌟 Terraform Azure Storage Automation (Dev & Prod) 🌟
<h2 align="center">☁️ Terraform Azure Storage Automation using Modules ☁️</h2>
<p align="center">
  <a href="https://www.terraform.io/">
    <img src="https://img.shields.io/badge/Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white"/>
  </a>
  <a href="https://azure.microsoft.com/">
    <img src="https://img.shields.io/badge/Azure-0078D4?style=for-the-badge&logo=microsoft-azure&logoColor=white"/>
  </a>
  <a href="https://devops.com/">
    <img src="https://img.shields.io/badge/DevOps-F05032?style=for-the-badge&logo=devops&logoColor=white"/>
  </a>
</p>

---

## 🧭 Architecture Diagram

<p align="center">
🌍 Azure Cloud<br>
└── 🗂️ <b>Resource Group</b> (`demo-rg`)<br>
  └── ☁️ <b>Storage Account</b> (`demostrg`)<br>
    └── 📁 <b>Storage Container</b> (`democntr`)
</p>

**Explanation:**  
<ul>
<li>🗂️ Resource Group is the parent container</li>
<li>☁️ Storage Account is created inside Resource Group</li>
<li>📁 Container resides inside Storage Account</li>
<li>✅ Separate modules are used for reusability</li>
<li>🌱 Dev and Prod environments with independent Terraform state</li>
</ul>

---

## 📁 Project Overview

**Resources Created:**
<ul>
<li>🗂️ Azure Resource Group</li>
<li>☁️ Azure Storage Account</li>
<li>📁 Azure Storage Container</li>
</ul>

**Modules Used:**
<ul>
<li>🛠️ <code>azurerm_resource_group</code></li>
<li>🛠️ <code>azurerm_storage_account</code></li>
<li>🛠️ <code>azurerm_storage_container</code></li>
</ul>

---

## 🧱 Root Module Configuration

```hcl
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
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
└── README.md

Module/
├── azurerm_resource_group/
│   └── main.tf
├── azurerm_storage_account/
│   └── main.tf
└── azurerm_storage_container/
    └── main.tf

⚙️ Prerequisites

✅ Terraform installed
✅ Azure CLI installed (az login)
✅ Active Azure Subscription

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