# Flood Prevention and Alert Response System

A comprehensive web-based flood prevention and alert response system with real-time monitoring, risk assessment, alert notifications, and emergency response management.

## Features

- **Real-time Monitoring Dashboard** - Live sensor data with interactive charts
- **Interactive Flood Risk Map** - Visual representation of sensor locations and risk levels using Leaflet
- **Multi-level Alert System** - Automatic alerts based on water level thresholds (Normal, Watch, Warning, Critical)
- **Emergency Contact Directory** - Quick access to emergency services with one-click calling
- **Incident Reporting** - Community-driven incident tracking and management
- **Historical Data Visualization** - Charts showing trends over time using Recharts
- **Responsive Design** - Works seamlessly on desktop and mobile devices

## Tech Stack

### Backend
- **Node.js** with **Express** - RESTful API server
- **TypeScript** - Type-safe development
- **SQLite** with **better-sqlite3** - Lightweight database
- **Rate Limiting** - API protection

### Frontend
- **React 18** with **TypeScript** - Modern UI framework
- **Vite** - Fast build tool and dev server
- **TailwindCSS** - Utility-first CSS framework
- **React Router** - Client-side routing
- **Leaflet** & **React-Leaflet** - Interactive maps
- **Recharts** - Data visualization
- **Lucide React** - Beautiful icons
- **Axios** - HTTP client

## Project Structure

```
flood-prevention-system/
├── backend/
│   ├── src/
│   │   ├── controllers/     # API controllers
│   │   ├── models/          # Database models
│   │   ├── routes/          # API routes
│   │   ├── services/        # Business logic
│   │   ├── database/        # Database configuration
│   │   └── utils/           # Helper functions
│   ├── database/            # SQLite database files
│   └── package.json
├── frontend/
│   ├── src/
│   │   ├── components/      # React components
│   │   ├── pages/           # Page components
│   │   ├── services/        # API services
│   │   ├── types/           # TypeScript types
│   │   └── utils/           # Utility functions
│   └── package.json
└── README.md
```

## Getting Started

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn

### Installation

1. **Clone or download the project**
   ```bash
   cd "flood prevention"
   ```

2. **Install Backend Dependencies**
   ```bash
   cd backend
   npm install
   ```

3. **Install Frontend Dependencies**
   ```bash
   cd ../frontend
   npm install
   ```

4. **Set up Environment Variables**
   
   In the `backend` folder, create a `.env` file:
   ```env
   PORT=5000
   NODE_ENV=development
   DB_PATH=./database/flood_system.db
   ```

5. **Seed the Database with Mock Data**
   ```bash
   cd backend
   npm run seed
   ```
   
   This will populate the database with:
   - 6 water level sensors
   - 7 emergency contacts
   - Sample incidents
   - 24-hour sensor readings
   - Auto-generated alerts based on water levels

### Running the Application

1. **Start the Backend Server**
   ```bash
   cd backend
   npm run dev
   ```
   
   The API will be available at `http://localhost:5000`

2. **Start the Frontend Development Server**
   ```bash
   cd frontend
   npm run dev
   ```
   
   The app will be available at `http://localhost:3000`

3. **Access the Application**
   
   Open your browser and navigate to `http://localhost:3000`

## API Endpoints

### Dashboard
- `GET /api/dashboard/stats` - Get dashboard statistics
- `GET /api/dashboard/recent-alerts` - Get recent alerts

### Sensors
- `GET /api/sensors` - List all sensors with latest readings
- `GET /api/sensors/:id` - Get sensor details
- `GET /api/sensors/:id/readings` - Get sensor readings
- `POST /api/sensors/readings` - Submit new reading

### Alerts
- `GET /api/alerts` - Get all alerts
- `GET /api/alerts/active` - Get active alerts
- `GET /api/alerts/:id` - Get alert details
- `POST /api/alerts` - Create new alert
- `PATCH /api/alerts/:id/resolve` - Resolve an alert

### Emergency Contacts
- `GET /api/emergency-contacts` - List all contacts
- `POST /api/emergency-contacts` - Create new contact

### Incidents
- `GET /api/incidents` - List all incidents
- `GET /api/incidents/:id` - Get incident details
- `POST /api/incidents` - Report new incident
- `PATCH /api/incidents/:id/status` - Update incident status

## Alert Thresholds

The system automatically generates alerts based on water level readings:

- **Normal**: Water level < 3m
- **Watch**: 3m ≤ Water level < 5m
- **Warning**: 5m ≤ Water level < 7m
- **Critical**: Water level ≥ 7m

## Pages

### Dashboard
- Overview statistics (active sensors, alerts, incidents)
- Real-time risk level indicator
- Active alerts banner
- Water level charts
- Sensor status grid

### Map
- Interactive map showing all sensor locations
- Color-coded markers by risk level
- Click markers for detailed sensor information
- Legend for risk levels

### Alerts
- List of all alerts with filtering (All/Active)
- Alert severity indicators
- Resolve alerts functionality
- Timestamp and location information

### Sensors
- List of all monitoring sensors
- Select sensor to view details
- Real-time water level and rainfall data
- Historical data charts (24 hours)

### Emergency Contacts
- Grouped by role/organization
- One-click calling functionality
- Email links
- Emergency hotline prominently displayed

### Report Incident
- Incident type selection
- Detailed description field
- Location input with optional GPS coordinates
- Success/error feedback

## Development

### Backend Development
```bash
cd backend
npm run dev        # Start development server with nodemon
npm run build      # Build for production
npm run start      # Start production server
npm run seed       # Seed database with mock data
```

### Frontend Development
```bash
cd frontend
npm run dev        # Start Vite dev server
npm run build      # Build for production
npm run preview    # Preview production build
```

## Database Schema

### Tables
- **sensors** - Water level sensor information
- **readings** - Sensor readings (water level, rainfall, temperature)
- **alerts** - Alert records with severity levels
- **emergency_contacts** - Emergency service contacts
- **incidents** - Reported flood incidents

All tables have appropriate indexes for optimal query performance.

## Security Features

- Rate limiting on all API endpoints (100 requests per 15 minutes)
- Input validation on all endpoints
- CORS configured for frontend-backend communication
- Error handling middleware

## Future Enhancements

- WebSocket integration for real-time alerts
- SMS/Email notifications
- User authentication and authorization
- Weather API integration
- Predictive analytics using ML
- Mobile app (React Native)
- Advanced map features (flood zone overlays, evacuation routes)
- Data export (CSV, PDF reports)
- Multi-language support

## License

MIT License

## Support

For issues, questions, or contributions, please open an issue in the repository.
