@echo on
echo 📊 CI/CD Pipeline Monitoring
echo.

echo === 🐳 Container Health ===
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
echo.

echo === 📈 Resource Usage ===
docker stats --no-stream --format "table {{.Container}}\t{{.CPUPerc}}\t{{.MemUsage}}"
echo.

echo === 📝 Recent Logs ===
echo App Logs:
docker logs --tail 5 cicd-app
echo.
echo Jenkins Logs:
docker logs --tail 5 cicd-jenkins
echo.

echo === 🌐 Connectivity Test ===
curl -s http://localhost:3000/health || echo "❌ App not responding"
curl -s http://localhost:9090 || echo "❌ Jenkins not responding"

pause