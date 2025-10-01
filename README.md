# 🚀 CI/CD Pipeline with Jenkins + Docker + GitHub

[![Build Status](https://img.shields.io/badge/build-passing-brightgreen)](https://github.com/tanikush/cicd-jenkins-docker)
[![Docker](https://img.shields.io/badge/docker-containerized-blue)](https://www.docker.com/)
[![Jenkins](https://img.shields.io/badge/jenkins-automated-orange)](https://www.jenkins.io/)
[![Node.js](https://img.shields.io/badge/node.js-18+-green)](https://nodejs.org/)

> **Professional DevOps project demonstrating enterprise-level CI/CD automation with Jenkins, Docker containerization, and GitHub integration.**

## 📋 Project Overview

This project showcases a **complete CI/CD pipeline** that automatically builds, tests, and deploys a Node.js application using industry-standard DevOps tools. Perfect for demonstrating automation skills to recruiters and employers.

### 🏗️ Architecture

```
GitHub Repository → Jenkins Pipeline → Docker Build → Automated Testing → Container Deployment
```

- **Source Control**: GitHub with automated polling
- **CI/CD Engine**: Jenkins with declarative pipeline
- **Containerization**: Docker & Docker Compose
- **Application**: Node.js Express REST API
- **Testing**: Jest automated test suite
- **Monitoring**: Health checks and logging

## ✨ Key Features

### 🔄 **Automated CI/CD Pipeline**
- ✅ Automatic code checkout from GitHub
- ✅ Dependency installation and caching
- ✅ Automated testing with Jest
- ✅ Docker image building and optimization
- ✅ Container deployment with health checks
- ✅ Pipeline failure notifications

### 🐳 **Docker Containerization**
- Multi-stage Docker builds for optimization
- Docker Compose for local development
- Container health monitoring
- Production-ready configurations

### 🧪 **Quality Assurance**
- Automated unit testing
- Code quality checks
- Test coverage reporting
- Build failure prevention

## 🚀 Quick Start

### Prerequisites
- [Node.js 18+](https://nodejs.org/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Git](https://git-scm.com/)

### One-Command Setup
```bash
git clone https://github.com/tanikush/cicd-jenkins-docker.git
cd cicd-jenkins-docker
setup.bat  # Windows
```

### Manual Setup
```bash
# Install dependencies
npm install

# Build and start services
docker-compose up -d

# Access applications
# App: http://localhost:3000
# Jenkins: http://localhost:9090
```

## 📊 Pipeline Stages

| Stage | Description | Tools |
|-------|-------------|-------|
| **Checkout** | Pull latest code from GitHub | Git, Jenkins SCM |
| **Dependencies** | Install Node.js packages | npm ci |
| **Testing** | Run automated test suite | Jest, Supertest |
| **Build** | Create optimized Docker image | Docker, Multi-stage build |
| **Deploy** | Deploy container with health checks | Docker Compose |

## 🛠️ Available Commands

```bash
# Full setup and deployment
setup.bat

# Quick restart services
quick-start.bat

# Check pipeline health
check-status.bat

# Monitor resources
monitor.bat

# Backup pipeline data
backup.bat

# Test without Docker
test-app.bat
```

## 🌐 API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/` | GET | Application status and info |
| `/health` | GET | Health check endpoint |

## 📈 Monitoring & Logging

- **Container Health**: Real-time status monitoring
- **Resource Usage**: CPU and memory tracking
- **Application Logs**: Centralized logging
- **Build History**: Jenkins pipeline tracking

## 🔧 Configuration

### Jenkins Pipeline
- **Repository**: Auto-polling every 2 minutes
- **Build Triggers**: SCM changes, manual builds
- **Notifications**: Build status alerts

### Docker Configuration
- **App Container**: Port 3000, health checks enabled
- **Jenkins Container**: Port 9090, persistent data
- **Networks**: Isolated container communication

## 📁 Project Structure

```
cicd-jenkins-docker/
├── app.js                 # Node.js Express application
├── app.test.js           # Jest test suite
├── Dockerfile            # Container configuration
├── docker-compose.yml    # Multi-service setup
├── Jenkinsfile          # CI/CD pipeline definition
├── package.json         # Node.js dependencies
├── setup.bat            # Automated setup script
└── scripts/             # Utility scripts
    ├── check-status.bat
    ├── monitor.bat
    └── backup.bat
```

## 🎯 Skills Demonstrated

### **DevOps & Automation**
- Jenkins pipeline configuration
- Docker containerization
- CI/CD workflow design
- Infrastructure as Code

### **Development**
- Node.js REST API development
- Automated testing with Jest
- Git version control
- Code quality practices

### **System Administration**
- Container orchestration
- Service monitoring
- Backup and recovery
- Performance optimization

## 🚀 Production Deployment

For production deployment:

```bash
# Use production configuration
docker-compose -f docker-compose.prod.yml up -d

# Enable SSL and load balancing
# Configure external monitoring
# Set up log aggregation
```

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Tanisha Kushwaha**
- GitHub: [@tanikush](https://github.com/tanikush)
- LinkedIn: [Connect with me](https://linkedin.com/in/your-profile)

---

### 💼 **For Recruiters**

This project demonstrates:
- **Enterprise-level DevOps skills**
- **Automation and CI/CD expertise**
- **Docker containerization proficiency**
- **Modern development practices**
- **Production-ready code quality**

*Ready to discuss how these skills can benefit your team!* 🚀