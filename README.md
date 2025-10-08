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
