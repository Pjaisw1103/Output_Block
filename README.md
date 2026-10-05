# ☁️ Azure Storage Automation with Terraform

[![Terraform](https://img.shields.io/badge/Terraform-1.x-623CE4?style=flat-square&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/Microsoft_Azure-Cloud-0078D4?style=flat-square&logo=microsoftazure&logoColor=white)](https://azure.microsoft.com/)
[![IaC](https://img.shields.io/badge/IaC-Infrastructure_as_Code-2ea44f?style=flat-square)](https://microservices.io/patterns/deployment/infrastructure-as-code.html)
[![Environment](https://img.shields.io/badge/Environment-Dev_%7C_Prod-orange?style=flat-square)]()

An automated Infrastructure as Code (IaC) solution built with **Terraform** to provision Azure Storage infrastructure across multiple environments (**Dev** and **Prod**). Built using a clean modular architecture ensuring code reusability, isolation, and seamless maintainability.

---

## 🏗️ Infrastructure Architecture

```text
┌─────────────────────────────────────────────────────────────┐
│                       Azure Cloud                           │
│                                                             │
│   ┌─────────────────────────────────────────────────────┐   │
│   │ Resource Group (demo-rg)                            │   │
│   │   └── Storage Account (demostrg)                    │   │
│   │         └── Blob Container (democntr)               │   │
│   └─────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────┘
```

---

## ✨ Key Features

* **🧩 Modular Architecture**: Reusable Terraform modules for Resource Group, Storage Account, and Blob Container.
* **🌍 Multi-Environment Deployment**: Isolated configurations for `dev` and `prod` environments.
* **🔗 Dynamic Output Binding**: Pass outputs (e.g., `strg-id`) seamlessly between modules as implicit dependencies.
* **⚡ Repeatable & Idempotent**: Safe, reliable infrastructure provisioning and destruction.

---

## 📂 Repository Structure

```text
Output_Block/
├── Environment/
│   ├── dev/
│   │   ├── main.tf
│   │   └── provider.tf
│   └── prod/
│       ├── main.tf
│       └── provider.tf
├── Module/
│   ├── azurerm_resource_group/
│   │   ├── main.tf
│   │   └── variable.tf
│   ├── azurerm_storage_account/
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   └── azurerm_storage_container/
│       ├── main.tf
│       └── variable.tf
├── .gitignore
└── README.md
```

---

## 📦 Provisioned Resources

| Module | Resource Type | Description |
| :--- | :--- | :--- |
| `azurerm_resource_group` | `azurerm_resource_group` | Logical container for Azure resources |
| `azurerm_storage_account` | `azurerm_storage_account` | Azure Blob Storage service |
| `azurerm_storage_container` | `azurerm_storage_container` | Blob storage container inside storage account |

---

## 🛠️ Prerequisites

Before executing the Terraform code, ensure you have:

* [Terraform CLI](https://developer.hashicorp.com/terraform/downloads) (v1.0+) installed.
* [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed.
* Authenticated Azure session (`az login`).

---

## 🚀 Quick Start & Deployment Guide

### 1. Clone the Repository

```bash
git clone https://github.com/Pjaisw1103/Output_Block.git
cd Output_Block
```

### 2. Choose Environment & Navigate

For **Development**:
```bash
cd Environment/dev
```

For **Production**:
```bash
cd Environment/prod
```

### 3. Initialize & Validate Terraform

```bash
# Initialize backend and providers
terraform init

# Validate configuration syntax
terraform validate
```

### 4. Review & Apply Infrastructure

```bash
# Preview changes to be made
terraform plan

# Apply infrastructure deployment
terraform apply -auto-approve
```

### 5. Destroy Infrastructure (Optional)

```bash
terraform destroy -auto-approve
```

---

## 📤 Module Output Mechanics

The `azurerm_storage_account` module exports output attributes that are consumed downstream by dependent modules:

**Module Output (`Module/azurerm_storage_account/output.tf`)**:
```hcl
output "strg-id" {
  value = azurerm_storage_account.strg.id
}
```

**Module Consumption (`Environment/dev/main.tf`)**:
```hcl
module "azurerm-cntr" {
  source    = "../../Module/azurerm_storage_container"
  cntr-name = "democntr"
  strg-id   = module.azurerm-strg.strg-id
}
```

---

## 👩‍💻 Author

**Priya Jaiswal**  
*Azure Cloud | DevOps | Infrastructure as Code*

[![GitHub](https://img.shields.io/badge/GitHub-Pjaisw1103-181717?style=flat-square&logo=github)](https://github.com/Pjaisw1103)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Priya_Jaiswal-0078D4?style=flat-square&logo=linkedin)](https://linkedin.com/in/priya-jaiswal1103)

---

<p align="center">
⭐ If you found this project helpful, give it a star!
</p>
