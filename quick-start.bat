@echo on
echo 🚀 Quick Start - CI/CD Pipeline
echo.

echo 🔄 Restarting services...
docker-compose down
docker-compose up -d
echo.

echo ⏳ Waiting 10 seconds...
timeout /t 10 /nobreak
echo.

echo 📊 Service Status:
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
echo.

echo 🌐 Opening applications...
start http://localhost:3000
timeout /t 2 /nobreak
start http://localhost:9090
echo.

echo ✅ Quick start complete!
pause