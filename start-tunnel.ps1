# Start Tunnel for Sahayak App
Write-Host "Starting HTTPS tunnel for mobile testing..." -ForegroundColor Green
Write-Host ""

# Check if dev server is running
$devRunning = Get-NetTCPConnection -LocalPort 3000 -ErrorAction SilentlyContinue
if (-not $devRunning) {
    Write-Host "ERROR: Dev server not running on port 3000!" -ForegroundColor Red
    Write-Host "Please run npm run dev first in another terminal" -ForegroundColor Yellow
    pause
    exit
}

Write-Host "Dev server detected on port 3000" -ForegroundColor Green
Write-Host ""
Write-Host "Starting tunnel..." -ForegroundColor Cyan
Write-Host ""

# Start localtunnel
npx -y localtunnel --port 3000
