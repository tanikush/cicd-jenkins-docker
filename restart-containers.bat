@echo on
echo 🔄 Restarting containers with port 9090...
echo.

echo 🛑 Stopping current containers...
docker-compose down
echo.

echo 🚀 Starting containers with updated ports...
docker-compose up -d
echo.

echo ⏳ Waiting for services...
timeout /t 10 /nobreak
echo.

echo 📊 Container Status:
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
echo.

echo ✅ Containers restarted!
echo 🌍 Application: http://localhost:3000
echo 🔧 Jenkins: http://localhost:9090
echo.

start http://localhost:9090
pause