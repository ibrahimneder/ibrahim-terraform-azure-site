# Azure Static Website with Terraform

A fully automated infrastructure-as-code deployment of a static portfolio website on Azure, featuring monitoring, CI/CD, and professional DevOps practices.

## 🎯 Project Overview

This project demonstrates enterprise-level cloud infrastructure automation by deploying a static website to Azure using Terraform and GitHub Actions. The infrastructure includes monitoring, automated deployments, and follows Azure best practices for naming and tagging.

**Live Site:** [https://gray-ocean-0b274e710.2.azurestaticapps.net](https://gray-ocean-0b274e710.2.azurestaticapps.net)

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────┐
│                     GitHub Actions                       │
│              (Automated CI/CD Pipeline)                  │
└────────────────────┬────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────┐
│              Azure Static Web App                        │
│         (Hosts HTML, CSS, JS, PDFs)                     │
└─────────────────────┬───────────────────────────────────┘
                      │
                      ▼
┌─────────────────────────────────────────────────────────┐
│           Azure Application Insights                     │
│        (Performance & Error Monitoring)                  │
└─────────────────────┬───────────────────────────────────┘
                      │
                      ▼
┌─────────────────────────────────────────────────────────┐
│          Log Analytics Workspace                         │
│           (Centralized Logging)                          │
└─────────────────────────────────────────────────────────┘
```

## 🚀 Features

- **Infrastructure as Code (IaC)**: Complete infrastructure defined in Terraform
- **Automated Deployments**: GitHub Actions CI/CD pipeline for zero-touch deployments
- **Monitoring & Observability**: Application Insights and Log Analytics for performance tracking
- **Cost Optimized**: Uses Azure free tier resources (100% free to run)
- **Professional Naming Convention**: All resources tagged with ownership and managed by Terraform
- **Version Controlled**: Full Git history of infrastructure changes

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| **Terraform** | Infrastructure as Code (IaC) |
| **Azure Static Web Apps** | Website hosting |
| **Azure Application Insights** | Application performance monitoring |
| **Azure Log Analytics** | Centralized logging and analytics |
| **GitHub Actions** | CI/CD automation |
| **Git** | Version control |

## 📁 Project Structure

```
.
├── .github/
│   └── workflows/
│       └── azure-static-web-apps-deploy.yml    # GitHub Actions CI/CD
├── terraform/
│   ├── main.tf                                 # Main infrastructure config
│   ├── variables.tf                            # Input variables
│   ├── outputs.tf                              # Output values
│   └── terraform.tfvars                        # Custom values
└── src/
    ├── index.html                              # Website homepage
    ├── styles.css                              # Styling
    ├── script.js                               # JavaScript
    └── assets/
        └── pdf/                                # Resume & certificates
```

## 🔧 Deployment Instructions

### Prerequisites

- Azure CLI installed and authenticated
- Terraform >= 1.0
- Git installed
- GitHub account

### Step 1: Clone the Repository

```bash
git clone https://github.com/ibrahimneder/ibrahim-terraform-azure-site.git
cd ibrahim-terraform-azure-site
```

### Step 2: Configure Azure Authentication

```bash
az login
az account set --subscription "YOUR-SUBSCRIPTION-ID"
```

### Step 3: Initialize and Deploy Infrastructure

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

### Step 4: Configure GitHub Secrets

1. Get the deployment token:
   ```bash
   terraform output -raw static_web_app_api_key
   ```

2. Add to GitHub:
   - Go to Repository Settings → Secrets → Actions
   - Create secret: `AZURE_STATIC_WEB_APPS_API_TOKEN`
   - Paste the token value

### Step 5: Deploy Website

```bash
cd ..
git add .
git commit -m "Deploy infrastructure and website"
git push origin main
```

GitHub Actions will automatically deploy your website!

## 📊 Monitoring & Observability

Access monitoring dashboards:

1. **Application Insights**: Monitor performance, track errors, analyze user behavior
2. **Log Analytics**: Query logs, create custom dashboards
3. **Azure Portal**: View all resources in the resource group

## 🏷️ Resource Naming Convention

All resources follow this pattern:
```
{resource-type}-{owner-name}-{project}-{environment}
```

Example: `swa-ibrahim-neder-portfolio-prod`

| Prefix | Resource Type |
|--------|---------------|
| `rg-` | Resource Group |
| `swa-` | Static Web App |
| `appi-` | Application Insights |
| `law-` | Log Analytics Workspace |

## 💰 Cost Analysis

| Resource | Tier | Monthly Cost |
|----------|------|--------------|
| Static Web App | Free | $0 |
| Application Insights | Free (5GB/month) | $0 |
| Log Analytics | Free (5GB/month) | $0 |
| **Total** | | **$0/month** |

## 🔐 Security Best Practices

- ✅ Deployment tokens stored as GitHub secrets
- ✅ HTTPS enforced on all endpoints
- ✅ Sensitive outputs marked as sensitive in Terraform
- ✅ No hardcoded credentials in code

## 📝 Key Learnings

This project demonstrates:

- Infrastructure as Code (IaC) principles
- Cloud resource provisioning and management
- CI/CD pipeline implementation
- Azure cloud services integration
- DevOps best practices
- Cost optimization strategies

## 🚧 Future Enhancements

- [ ] Add custom domain with SSL
- [ ] Implement Azure Front Door for CDN
- [ ] Add automated testing in CI/CD pipeline
- [ ] Configure alerts and monitoring rules
- [ ] Add staging environment

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👤 Author

**Ibrahim Neder**

- GitHub: [@ibrahimneder](https://github.com/ibrahimneder)
- Project: [Azure Static Website Infrastructure](https://github.com/ibrahimneder/ibrahim-terraform-azure-site)

---

**Note**: This project was created as a demonstration of cloud infrastructure automation and DevOps practices.
