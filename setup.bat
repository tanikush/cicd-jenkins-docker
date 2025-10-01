@echo on
echo 🚀 Setting up CI/CD Pipeline...
echo.

echo 🔍 Checking prerequisites...
node --version || (echo ❌ Node.js not found! Please install Node.js && pause && exit /b 1)
docker --version || (echo ❌ Docker not found! Please install Docker Desktop && pause && exit /b 1)
echo ✅ Prerequisites OK!
echo.

echo 📦 Installing Node.js dependencies...
npm install
if %errorlevel% neq 0 (echo ❌ npm install failed! && pause && exit /b 1)
echo ✅ Dependencies installed!
echo.

echo 📦 Cleaning up old containers...
docker-compose down 2>nul
docker system prune -f 2>nul
echo.

echo 🔨 Building Docker image...
docker build -t cicd-app .
if %errorlevel% neq 0 (echo ❌ Docker build failed! && pause && exit /b 1)
echo ✅ Docker image built!
echo.

echo 🚀 Starting services with Docker Compose...
docker-compose up -d
if %errorlevel% neq 0 (echo ❌ Docker Compose failed! && pause && exit /b 1)
echo ✅ Services started!
echo.

echo ⏳ Waiting for services to initialize...
timeout /t 15 /nobreak
echo.

echo 📊 Checking service status...
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
echo.

echo 🎉 Setup complete!
echo 🌍 Application: http://localhost:3000
echo 🔧 Jenkins: http://localhost:9090
echo.
echo 📝 Run 'check-status.bat' for detailed status
echo 🔄 Run 'test-app.bat' to test without Docker
echo.
start http://localhost:3000
echo Press any key to exit...
pause