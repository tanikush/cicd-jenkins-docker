@echo on
echo 🔍 Checking CI/CD Pipeline Status...
echo.

echo === 📦 Docker Containers ===
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
echo.

echo === 🌐 Port Status ===
netstat -an | findstr ":3000" || echo "Port 3000: Not in use"
netstat -an | findstr ":8080" || echo "Port 8080: Not in use"
echo.

echo === 📜 Container Logs (Last 10 lines) ===
echo 🚀 App Container:
docker logs --tail 10 cicd-app 2>nul || echo "App container not running"
echo.
echo 🔧 Jenkins Container:
docker logs --tail 10 cicd-jenkins 2>nul || echo "Jenkins container not running"
echo.

echo === 🎯 Testing Connections ===
echo Testing App (Port 3000):
curl -s -w "Status: %%{http_code}\n" http://localhost:3000 || echo "❌ Port 3000 not responding"
echo.
echo Testing Jenkins (Port 9090):
curl -s -w "Status: %%{http_code}\n" http://localhost:9090 || echo "❌ Port 9090 not responding"
echo.

echo === 🛠️ Quick Actions ===
echo 1. Restart services: docker-compose restart
echo 2. View logs: docker-compose logs -f
echo 3. Stop services: docker-compose down
echo 4. Rebuild: docker-compose up --build -d
echo.

pause