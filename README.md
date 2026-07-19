<p align="center">
  <img src="./assets/banners/repository-banner.png.png" alt="Portfolio Banner" width="100%">
</p>
<div align="center">

# 🚀 Terraform Employee Onboarding Automation

### Production-Inspired Infrastructure as Code (IaC) Project using HashiCorp Terraform

Automates employee onboarding by generating personalized welcome letters, HR reports, search indexes, and dashboards using Terraform templates.

</div>
<p align="center">

![Terraform](https://img.shields.io/badge/Terraform-v1.x-623CE4?logo=terraform&logoColor=white)
![IaC](https://img.shields.io/badge/Infrastructure%20as%20Code-IaC-blue)
![Status](https://img.shields.io/badge/Status-Completed-success)
![License](https://img.shields.io/badge/License-MIT-green)

</p>


## 📌 Project Status

| Property | Value |
|----------|-------|
| Version | v1.0.0 |
| Status | Completed |
| Project Type | Portfolio Project |
| Terraform Version | v1.x |
| Platform | Windows |
| Cloud Resources | None (Local Provider) |
| Difficulty | Beginner → Intermediate |


## 📑 Table of Contents

- [Overview](#-overview)
- [Project Preview](#-project-preview)
- [Business Problems](#-business-problems)
- [Solutions](#-solutions)
- [Features](#-features)
- [Project Highlights](#-project-highlights)
- [Project Architecture](#-project-architecture)
- [Folder Structure](#-folder-structure)
- [Terraform Concepts & Skills Demonstrated](#-terraform-concepts--skills-demonstrated)
- [Workflow](#-workflow)
- [How to Run](#-how-to-run)
- [Security Best Practices](#-security-best-practices)
- [Future Improvements](#-future-improvements)
- [Author](#-author)


##  📖 Overview

This project simulates a real-world HR onboarding workflow using HashiCorp Terraform.

Instead of manually preparing employee documents, Terraform dynamically generates welcome letters, HR reports, employee search indexes, and dashboards from structured employee data.

The project demonstrates how Infrastructure as Code (IaC) principles can automate repetitive business processes while applying Terraform best practices such as validation, template rendering, reusable configurations, dynamic expressions, and sensitive variables.


## 📸 Project Preview

### Repository Overview

<p align="center">
<img src="assets/screenshots/Repository-overview.png" width="100%">
</p>

---


### Generated Outputs

<table>

<tr>

<td align="center" width="50%">

<b>📄 Welcome Letter</b>

<br><br>

<img src="assets/screenshots/welcome-letter.png">

</td>

<td align="center" width="50%">

<b>📊 Employee Summary</b>

<br><br>

<img src="assets/screenshots/employee-summary.png">

</td>

</tr>

<tr>

<td align="center">

<b>🔍 Search Index</b>

<br><br>

<img src="assets/screenshots/search-index.png">

</td>

<td align="center">

<b>📈 HR Dashboard</b>

<br><br>

<img src="assets/screenshots/hr-dashboard.png">

</td>

</tr>

</table>


## 💼 Business Problems

In many organizations, HR teams manually prepare onboarding documents for every new employee.

This process is repetitive, time-consuming, and prone to human errors.

As the number of employees grows, maintaining consistency across welcome letters, summaries, and reports becomes difficult.


## 💡 Solutions

This project automates the onboarding workflow using Terraform.

Based on employee information provided in `terraform.tfvars`, Terraform automatically generates:

- Personalized Welcome Letters
- Employee Summary Report
- Search Index
- HR Dashboard

The project also validates employee data before generating outputs, ensuring consistency and reducing manual effort.


## ✨ Features

- Automated employee onboarding documents
- Dynamic Terraform templates
- Personalized welcome letters
- Employee summary report
- HR dashboard generation
- Search index generation
- Input validation
- Sensitive variable demonstration
- Reusable local values
- Clean project structure


## 🌟 Project Highlights

- Generates onboarding documents automatically
- Eliminates repetitive HR tasks
- Demonstrates Infrastructure as Code principles
- Simulates a real-world onboarding workflow
- Designed without cloud resources for local learning


## 🏗️ Project Architecture

```mermaid
flowchart TD

A["Employee Records<br/>terraform.tfvars"]

B["Terraform CLI"]

C["Variable Validation"]

D["Local Values"]

E["Expressions & Functions"]

F["Template Engine<br/>templatefile()"]

G["Welcome Letter"]

H["Employee Summary"]

I["Search Index"]

J["HR Dashboard"]

K["Generated Reports"]

A --> B

B --> C
B --> D
B --> E

C --> F
D --> F
E --> F

F --> G
F --> H
F --> I
F --> J

G --> K
H --> K
I --> K
J --> K
```


## 📂 Folder Structure

| Folder / File | Description |
|---------------|-------------|
| 📁 **assets/** | Stores project banners, screenshots, icons, and other visual assets. |
| ├── 📁 **banners/** | Repository banner and branding images. |
| ├── 📁 **screenshots/** | Screenshots used in the README 
| 📁 **employees/** | Generated onboarding documents created by Terraform. |
| ├── 📄 EMP001_Geeta.txt | Personalized welcome letter. |
| ├── 📄 EMP002_Sonia.txt | Personalized welcome letter. |
| ├── 📄 EMP003_Trisha.txt | Personalized welcome letter. |
| ├── 📄 employee-summary.txt | Consolidated employee summary report. |
| ├── 📄 search-index.txt | Employee search index. |
| └── 📄 hr-dashboard.txt | HR dashboard report. |
| 📁 **templates/** | Terraform template files used to generate outputs. |
| ├── 📄 welcome.tftpl | Welcome letter template. |
| ├── 📄 summary.tftpl | Employee summary template. |
| ├── 📄 search-index.tftpl | Search index template. |
| └── 📄 dashboard.tftpl | HR dashboard template. |
| 📄 **main.tf** | Main Terraform configuration. |
| 📄 **variables.tf** | Input variable definitions. |
| 📄 **terraform.tfvars** | Employee data used by Terraform. |
| 📄 **locals.tf** | Local values and reusable expressions. |
| 📄 **outputs.tf** | Output values after execution. |
| 📄 **providers.tf** | Provider configuration. |
| 📄 **versions.tf** | Required Terraform version and provider constraints. |
| 📄 **README.md** | Project documentation. |
| 📄 **LICENSE** | MIT License. |
| 📄 **.gitignore** | Excludes unnecessary files from Git tracking. |


## ▶️ How to Run

### Clone Repository

```bash
git clone https://github.com/Riyadahiya01/terraform-employee-onboarding.git
```

### Navigate to Project

```bash
cd terraform-employee-onboarding
```

### Initialize Terraform

```bash
terraform init
```

### Review Execution Plan

```bash
terraform plan
```

### Apply Configuration

```bash
terraform apply
```


## 🔒 Security Best Practices

This project follows Terraform security best practices.

- No real passwords or cloud credentials are included.
- Sensitive values are demonstrated using placeholder data.
- Terraform Sensitive Variables prevent accidental exposure in CLI output.
- Placeholder values such as `DEMO_SECRET_VALUE` are used for educational purposes only.


## 🚀 Future Improvements

- AWS S3 integration for document storage
- Amazon SES email notifications
- AWS Lambda-based onboarding workflow
- DynamoDB employee records
- Remote Terraform state backend (Amazon S3 + DynamoDB)
- Multi-environment deployment (Dev / Test / Production)


## 👩‍💻 Author

**Riya Dahiya**

- GitHub:https://github.com/Riyadahiya01
- LinkedIn: www.linkedin.com/in/riya-dahiya-

---

<div align="center">

Made with ❤️ using **HashiCorp Terraform**


</div>
