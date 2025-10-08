🌟 Terraform Azure Storage Automation (Dev & Prod) 🌟
<h1 align="center">☁️✨ Terraform Azure Storage Automation (Dev & Prod) ✨☁️</h1>

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
🌍 <b>Azure Cloud</b><br>
└── 🗂️ <b>Resource Group</b> (`demo-rg`)<br>
  └── ☁️ <b>Storage Account</b> (`demostrg`)<br>
    └── 📁 <b>Storage Container</b> (`democntr`)
</p>

<details>
<summary><b>Explanation</b> 🔹</summary>

- 🗂️ Resource Group is the parent container  
- ☁️ Storage Account is created inside Resource Group  
- 📁 Container resides inside Storage Account  
- ✅ Each resource is deployed via a **separate reusable module**  
- 🌱 Dev and Prod environments have independent Terraform state files  

</details>

---

## 📁 Project Overview

**Resources Created:**

| Resource Type | Name          | Emoji |
|---------------|---------------|-------|
| Resource Group | demo-rg       | 🗂️    |
| Storage Account | demostrg     | ☁️    |
| Storage Container | democntr   | 📁    |

**Modules Used:**
- 🛠️ `azurerm_resource_group`  
- 🛠️ `azurerm_storage_account`  
- 🛠️ `azurerm_storage_container`  

---

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

📤 Terraform Output Block Example
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