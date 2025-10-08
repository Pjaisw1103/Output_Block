🌟 Terraform Azure Storage Automation (Dev & Prod) 🌟
<h2 align="center">☁️✨ Terraform Azure Storage Automation (Dev & Prod) ✨☁️</h2>

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

<h2 align="center">⚙️ Folder Structure</h2>

<pre>
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
</pre>

---

<h2 align="center">⚙️ Prerequisites</h2>

<ul>
<li>✅ Terraform installed</li>
<li>✅ Azure CLI installed (<code>az login</code>)</li>
<li>✅ Active Azure Subscription</li>
</ul>

---

<h2 align="center">🪜 Steps to Deploy</h2>

<ol>
<li><b>Clone repository:</b>
<pre>
git clone https://github.com/Pjaisw1103/Output_Block.git
cd Output_Block
</pre>
</li>

<li><b>Initialize Terraform:</b>
<pre>
terraform init
</pre>
</li>

<li><b>Validate configuration:</b>
<pre>
terraform validate
</pre>
</li>

<li><b>Plan deployment:</b>
<pre>
terraform plan
</pre>
</li>

<li><b>Apply configuration:</b>
<pre>
terraform apply
</pre>
</li>

<li><b>View outputs:</b>
<pre>
Outputs:
rg_name              = "demo-rg"
storage_account_name = "demostrg"
container_name       = "democntr"
</pre>
</li>
</ol>

---

<h2 align="center">📤 Terraform Output Block Example</h2>

```hcl
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

## 🧹 Destroy Resources

terraform destroy
