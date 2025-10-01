# CI/CD Pipeline with Jenkins + Docker + GitHub

This project demonstrates a complete CI/CD pipeline using Jenkins, Docker, and GitHub.

## Architecture
- **Source Control**: GitHub
- **CI/CD**: Jenkins
- **Containerization**: Docker
- **Application**: Node.js sample app

## Setup Instructions
1. Install Docker Desktop
2. Install Jenkins
3. Configure GitHub webhook
4. Run the pipeline

## Pipeline Flow
1. Code push to GitHub
2. GitHub webhook triggers Jenkins
3. Jenkins pulls code
4. Jenkins builds Docker image
5. Jenkins runs tests
6. Jenkins deploys container