# Flood Prevention System - Setup Script for Windows
# This script installs all dependencies and sets up the database

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Flood Prevention System Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Node.js is installed
Write-Host "Checking Node.js installation..." -ForegroundColor Yellow
try {
    $nodeVersion = node --version
    Write-Host "Node.js found: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Node.js is not installed. Please install Node.js first." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Step 1: Installing Backend Dependencies..." -ForegroundColor Cyan
Set-Location backend
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to install backend dependencies" -ForegroundColor Red
    exit 1
}
Write-Host "Backend dependencies installed successfully!" -ForegroundColor Green
Set-Location ..

Write-Host ""
Write-Host "Step 2: Installing Frontend Dependencies..." -ForegroundColor Cyan
Set-Location frontend
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to install frontend dependencies" -ForegroundColor Red
    exit 1
}
Write-Host "Frontend dependencies installed successfully!" -ForegroundColor Green
Set-Location ..

Write-Host ""
Write-Host "Step 3: Setting up Database..." -ForegroundColor Cyan
Set-Location backend
npm run seed
if ($LASTEXITCODE -ne 0) {
    Write-Host "WARNING: Database seeding failed. You can run 'npm run seed' later." -ForegroundColor Yellow
} else {
    Write-Host "Database seeded successfully!" -ForegroundColor Green
}
Set-Location ..

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "To start the application:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Open TWO terminal windows" -ForegroundColor White
Write-Host ""
Write-Host "2. In Terminal 1 (Backend):" -ForegroundColor White
Write-Host "   cd backend" -ForegroundColor Cyan
Write-Host "   npm run dev" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. In Terminal 2 (Frontend):" -ForegroundColor White
Write-Host "   cd frontend" -ForegroundColor Cyan
Write-Host "   npm run dev" -ForegroundColor Cyan
Write-Host ""
Write-Host "4. Open your browser to: http://localhost:3000" -ForegroundColor White
Write-Host ""
Write-Host "Enjoy your Flood Prevention System!" -ForegroundColor Green
Write-Host ""
