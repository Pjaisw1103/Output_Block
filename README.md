<h1 align="center">🌟 Terraform Azure Storage Automation (Dev & Prod) 🌟</h1>

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

<hr>

<h2 align="center">☁️✨ Terraform Azure Storage Automation (Dev & Prod) ✨☁️</h2>

<p align="center">
  This project automates the provisioning of <b>Azure Storage Infrastructure</b> using <b>Terraform</b>.<br>
  It includes Resource Group, Storage Account, and Storage Container modules.<br>
  Both <b>Development</b> and <b>Production</b> environments are managed separately for better scalability and control.
</p>

<hr>

<h2>🧭 Architecture Diagram</h2>

<p align="center">
🌍 <b>Azure Cloud</b><br>
└── 🗂️ <b>Resource Group</b> (<code>demo-rg</code>)<br>
  └── ☁️ <b>Storage Account</b> (<code>demostrg</code>)<br>
    └── 📁 <b>Storage Container</b> (<code>democntr</code>)
</p>

<details>
<summary><b>Explanation</b> 🔹</summary>
<ul>
  <li>🗂️ <b>Resource Group</b> acts as the parent container for all Azure resources.</li>
  <li>☁️ <b>Storage Account</b> is created within the resource group for storing cloud data.</li>
  <li>📁 <b>Storage Container</b> resides inside the storage account for blob data management.</li>
  <li>🌱 Each environment (Dev & Prod) uses its own Terraform state file for separation and safety.</li>
  <li>🧩 Each resource is managed via independent, reusable Terraform modules.</li>
</ul>
</details>

<hr>

<h2>📁 Project Overview</h2>

<p><b>Resources Created:</b></p>

<table>
  <tr><th>Resource Type</th><th>Name</th><th>Emoji</th></tr>
  <tr><td>Resource Group</td><td><code>demo-rg</code></td><td>🗂️</td></tr>
  <tr><td>Storage Account</td><td><code>demostrg</code></td><td>☁️</td></tr>
  <tr><td>Storage Container</td><td><code>democntr</code></td><td>📁</td></tr>
</table>

<p><b>Modules Used:</b></p>
<ul>
  <li>🛠️ <code>azurerm_resource_group</code></li>
  <li>🛠️ <code>azurerm_storage_account</code></li>
  <li>🛠️ <code>azurerm_storage_container</code></li>
</ul>

<hr>

<h2>📂 Folder Structure</h2>

<pre>
Root/
├── main.tf          # Calls all modules
├── provider.tf      # Azure provider configuration
├── variables.tf     # Input variables
├── outputs.tf       # Output definitions
└── README.md        # Documentation

Module/
├── azurerm_resource_group/
│   └── main.tf
├── azurerm_storage_account/
│   └── main.tf
└── azurerm_storage_container/
    └── main.tf
</pre>

<hr>

<h2>⚙️ Prerequisites</h2>

<ul>
  <li>✅ Terraform v1.5 or later installed</li>
  <li>✅ Azure CLI installed and authenticated (<code>az login</code>)</li>
  <li>✅ Active Azure Subscription</li>
</ul>

<hr>

<h2>🪜 Steps to Deploy</h2>

<ol>
  <li><b>Clone repository:</b>
  <pre><code>git clone https://github.com/Pjaisw1103/Output_Block.git
cd Output_Block
</code></pre></li>

  <li><b>Initialize Terraform:</b>
  <pre><code>terraform init</code></pre></li>

  <li><b>Validate configuration:</b>
  <pre><code>terraform validate</code></pre></li>

  <li><b>Preview changes:</b>
  <pre><code>terraform plan</code></pre></li>

  <li><b>Apply configuration:</b>
  <pre><code>terraform apply -auto-approve</code></pre></li>

  <li><b>View outputs:</b>
  <pre><code>
Outputs:
rg_name              = "demo-rg"
storage_account_name = "demostrg"
container_name       = "democntr"
  </code></pre></li>
</ol>

<hr>

<h2>📤 Terraform Output Block Example</h2>

<pre><code class="language-hcl">
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
</code></pre>

<hr>

<h2>🧠 Key Concepts</h2>
<ul>
  <li><b>Modular Design:</b> Each Azure resource is isolated as an independent Terraform module for reusability.</li>
  <li><b>Environment Isolation:</b> Dev and Prod environments maintain separate state files.</li>
  <li><b>Idempotency:</b> Running Terraform multiple times produces the same result safely.</li>
</ul>

<hr>

<h2>🧹 Destroy Resources</h2>

<p>When you’re done testing or deploying, you can clean up all created resources using:</p>

<pre><code>terraform destroy -auto-approve</code></pre>

<p><b>Note:</b> Always double-check your current workspace (Dev or Prod) before destroying resources to avoid accidental deletions.</p>

<hr>

<h2>🤝 Contribution</h2>

<p>
  Contributions are always welcome!<br>
  If you’d like to enhance or extend this project, please fork the repo and submit a pull request.
</p>

<hr>

<p align="center">
  Made with ❤️ using <b>Terraform</b> and <b>Microsoft Azure</b>.<br>
  <i>Automate • Deploy • Manage • Scale</i>
</p>
