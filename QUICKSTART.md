# Quick Start Guide

## Option 1: Automated Setup (Recommended)

Run the setup script:
```powershell
.\setup.ps1
```

This will automatically:
- Install all backend dependencies
- Install all frontend dependencies
- Seed the database with mock data

## Option 2: Manual Setup

### 1. Install Backend Dependencies
```bash
cd backend
npm install
```

### 2. Install Frontend Dependencies
```bash
cd frontend
npm install
```

### 3. Seed Database (Optional but Recommended)
```bash
cd backend
npm run seed
```

### 4. Start Backend Server
```bash
cd backend
npm run dev
```

Backend will run on: http://localhost:5000

### 5. Start Frontend Server (in a new terminal)
```bash
cd frontend
npm run dev
```

Frontend will run on: http://localhost:3000

### 6. Open Application
Open your browser and go to: http://localhost:3000

## What's Included in Mock Data

- 6 water level sensors across different locations
- 7 emergency contacts (hospitals, fire, police, etc.)
- 3 sample incidents
- 24 hours of sensor readings (updated hourly)
- Auto-generated alerts based on water level thresholds

## Troubleshooting

### Port Already in Use
If port 5000 or 3000 is already in use:
- Backend: Edit `backend/.env` and change `PORT=5000` to another port
- Frontend: Edit `frontend/vite.config.ts` and change `port: 3000` to another port

### Database Issues
Reset the database:
```bash
cd backend
rm database/flood_system.db
npm run seed
```

### Dependencies Issues
Clear and reinstall:
```bash
# Backend
cd backend
rm -rf node_modules package-lock.json
npm install

# Frontend
cd frontend
rm -rf node_modules package-lock.json
npm install
```

## Default Credentials

No authentication is required for this version. The system is ready to use immediately after setup.
