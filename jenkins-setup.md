# Jenkins Setup Guide

## 1. Install Jenkins
- Download Jenkins from https://www.jenkins.io/download/
- Install and start Jenkins service
- Access Jenkins at http://localhost:8080

## 2. Initial Setup
1. Get initial admin password from Jenkins logs
2. Install suggested plugins
3. Create admin user

## 3. Required Plugins
Install these plugins in Jenkins:
- Docker Pipeline
- GitHub Integration
- NodeJS Plugin
- Pipeline

## 4. Configure Tools
1. Go to Manage Jenkins > Global Tool Configuration
2. Add NodeJS installation (name: "NodeJS", version: latest LTS)
3. Add Docker installation

## 5. Create Pipeline Job
1. New Item > Pipeline
2. Name: "cicd-jenkins-docker"
3. Pipeline Definition: "Pipeline script from SCM"
4. SCM: Git
5. Repository URL: your GitHub repo URL
6. Script Path: Jenkinsfile

## 6. GitHub Webhook Setup
1. Go to your GitHub repo > Settings > Webhooks
2. Add webhook: http://your-jenkins-url:8080/github-webhook/
3. Content type: application/json
4. Events: Push events

## 7. Credentials Setup
1. Manage Jenkins > Manage Credentials
2. Add GitHub credentials if repo is private
3. Add Docker Hub credentials if pushing to registry