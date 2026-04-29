# 🚀 DevOps Automation Scripts

This repository contains a collection of **Shell scripts for DevOps automation**, covering real-world use cases such as AWS provisioning, Docker management, CI/CD workflows, system monitoring, and server automation.

---

## 📌 About the Project

This project is designed to:

* Automate repetitive DevOps tasks
* Demonstrate real-world scripting skills
* Serve as a learning resource for beginners and intermediate engineers

---

## 🛠️ Technologies Used

* Shell Scripting (Bash)
* Docker
* AWS CLI
* Linux Commands

---

## 📁 Project Structure

```
Conditional-Statement/
├── case.sh
├── elif.sh
└── if-else.sh

Loop/
├── for_loop.sh
└── while_loop.sh

devops-automation/
├── AWS/
│   └── ec2instancecreation.sh
├── Docker/
│   ├── docker-build.sh
│   ├── docker-deploy.sh
│   ├── docker-image-push.sh
│   └── docker-cleanup.sh
├── CI-CD/
│   └── ci-cd.sh
├── Monitoring/
│   ├── monitoring.sh
│   └── application-health.sh
├── Backup/
│   └── backup.sh
├── Logs/
│   └── log-cleanup.sh
├── User-Management/
│   └── usercreation.sh
├── Automation/
│   ├── autorestart.sh
│   ├── rollback-deployment.sh
│   └── multiple-server-patching.sh
├── Utils/
│   └── file-dir-check.sh
└── README.md
```

---

## ⚙️ Prerequisites

Before running scripts, ensure:

* AWS CLI is installed and configured
* Docker is installed and running
* Linux environment (Ubuntu/CentOS)
* Required permissions (sudo access)

---

## 🚀 How to Use

### 1️⃣ Clone the repository

```
git clone https://github.com/VaibhavRamteke-1/Shell-Scripting-For-DevOps.git
cd Shell-Scripting-For-DevOps
```

### 2️⃣ Make scripts executable

```
chmod +x *.sh
```

### 3️⃣ Run scripts

#### ▶️ Create EC2 Instance

```
./AWS/ec2instancecreation.sh
```

#### 🐳 Build Docker Image

```
./Docker/docker-build.sh
```

#### 📊 Monitor System

```
./Monitoring/monitoring.sh
```

#### 🧹 Clean Logs

```
./Logs/log-cleanup.sh
```

---

## 🔥 Key Features

* AWS EC2 automation using CLI
* Docker build, deploy, and cleanup scripts
* CI/CD workflow automation
* System monitoring and health checks
* Log cleanup and backup automation
* Multi-server patching and restart automation

---

## 💡 Use Cases

* Automating deployments
* Managing cloud infrastructure
* Monitoring system health
* Performing routine maintenance tasks

---

## ⭐ Support

If you find this repository useful, please ⭐ star the repo and share it with others!
