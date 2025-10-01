@echo on
echo 💾 CI/CD Pipeline Backup
echo.

set BACKUP_DIR=backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%

echo Creating backup directory: %BACKUP_DIR%
mkdir %BACKUP_DIR%

echo Backing up Jenkins data...
docker cp cicd-jenkins:/var/jenkins_home %BACKUP_DIR%\jenkins_home

echo Backing up source code...
xcopy /E /I . %BACKUP_DIR%\source

echo Creating Docker images backup...
docker save cicd-app > %BACKUP_DIR%\cicd-app.tar
docker save jenkins/jenkins:lts > %BACKUP_DIR%\jenkins.tar

echo ✅ Backup completed: %BACKUP_DIR%
pause