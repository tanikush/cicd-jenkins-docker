@echo on
echo Testing application directly...
echo.

echo Starting Node.js app directly (without Docker)...
start /b npm start
echo.

echo Waiting 5 seconds...
timeout /t 5 /nobreak
echo.

echo Testing connection...
curl http://localhost:3000 || echo "Connection failed"

echo.
echo Press any key to stop the app...
pause

echo Stopping Node.js processes...
taskkill /f /im node.exe 2>nul