const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send(`
    <h1>🚀 CI/CD Pipeline Working!</h1>
    <p>Version: 1.0.0</p>
    <p>Time: ${new Date().toLocaleString()}</p>
    <p>Port: ${port}</p>
    <a href="/health">Health Check</a>
  `);
});

app.get('/health', (req, res) => {
  res.json({ status: 'healthy', port: port, time: new Date().toISOString() });
});

if (require.main === module) {
  app.listen(port, '0.0.0.0', () => {
    console.log(`🚀 Server running on http://localhost:${port}`);
  });
}

module.exports = app;