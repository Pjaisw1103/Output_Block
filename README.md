# ☁️ Azure Storage Automation with Terraform

<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=JetBrains+Mono&weight=600&size=22&duration=2500&pause=1000&color=0078D4&center=true&vCenter=true&width=800&lines=Terraform+Based+Azure+Storage+Provisioning;Reusable+Infrastructure+Modules;Dev+and+Production+Environment+Automation"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white"/>
  <img src="https://img.shields.io/badge/Microsoft%20Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white"/>
  <img src="https://img.shields.io/badge/IaC-Infrastructure%20as%20Code-success?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Environment-Dev%20%7C%20Prod-orange?style=for-the-badge"/>
</p>

---

## 📌 Overview

This project automates the provisioning of Azure Storage resources using Terraform.

The infrastructure is built using reusable modules and supports separate **Development** and **Production** environments for better scalability, isolation, and maintainability.

---

## 🏗️ Architecture

```text
Azure Cloud
│
└── Resource Group
    │
    └── Storage Account
        │
        └── Storage Container
```

---

## ✨ Features

| Feature                   | Description                            |
| ------------------------- | -------------------------------------- |
| 🏗️ Modular Design        | Reusable Terraform modules             |
| 🌍 Multi-Environment      | Separate Dev & Prod configurations     |
| ☁️ Azure Storage          | Automated Storage Account provisioning |
| 📁 Blob Containers        | Automated container creation           |
| 🔄 Idempotent Deployments | Safe repeatable infrastructure changes |
| 🚀 Infrastructure as Code | Fully managed through Terraform        |

---

## 📦 Resources Created

| Resource          | Purpose                               |
| ----------------- | ------------------------------------- |
| Resource Group    | Logical container for Azure resources |
| Storage Account   | Azure storage service                 |
| Storage Container | Blob storage container                |

---

## 📂 Repository Structure

```text
.
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── README.md
│
└── Module/
    ├── azurerm_resource_group/
    ├── azurerm_storage_account/
    └── azurerm_storage_container/
```

---

## 🛠️ Technology Stack

<p align="center">
  <img src="https://skillicons.dev/icons?i=terraform,azure,git,github,vscode"/>
</p>

---

## 🚀 Deployment Steps

### Clone Repository

```bash
git clone https://github.com/Pjaisw1103/Output_Block.git
cd Output_Block
```

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Preview Changes

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply -auto-approve
```

---

## 📤 Outputs

```hcl
output "rg_name" {
  value = module.azurerm-rg.rg-name
}

output "storage_account_name" {
  value = module.azurerm-strg.strg-name
}

output "container_name" {
  value = module.azurerm-cntr.cntr-name
}
```

Example Output:

```text
rg_name              = "demo-rg"
storage_account_name = "demostrg"
container_name       = "democntr"
```

---

## 🔄 Environment Strategy

```text
Development
│
├── Testing
├── Validation
└── Feature Deployment

Production
│
├── Stable Workloads
├── Secure Resources
└── Business Operations
```

---

## 🧹 Cleanup Resources

To remove all deployed resources:

```bash
terraform destroy -auto-approve
```

---

## 📈 Learning Outcomes

* Terraform Modules
* Azure Storage Services
* Infrastructure as Code (IaC)
* Multi-Environment Deployment Strategy
* Terraform Outputs & Variables
* Azure Resource Management

---

## 👩‍💻 Author

**Priya Jaiswal**

Azure Cloud | DevOps | Terraform

<p align="center">
  <a href="https://github.com/Pjaisw1103">
    <img src="https://img.shields.io/badge/GitHub-Pjaisw1103-181717?style=for-the-badge&logo=github"/>
  </a>

  <a href="https://linkedin.com/in/priya-jaiswal1103">
    <img src="https://img.shields.io/badge/LinkedIn-Priya%20Jaiswal-0078D4?style=for-the-badge&logo=linkedin"/>
  </a>
</p>

---

<p align="center">
⭐ If you found this project useful, consider giving it a star.
</p>
