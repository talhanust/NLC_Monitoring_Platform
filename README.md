# NLC Monitoring Platform

A comprehensive offline-capable monitoring platform for NLC Headquarters that processes monthly MMRs from 500+ projects across five directorates.

## Features

- Document Processing & Baseline Extraction
- Adaptive MMR Processing
- AI-Powered Insights & Predictive Analytics
- Executive Dashboard & Real-Time Monitoring
- Issue & Decision Management
- Offline/Online Synchronization

## Technology Stack

- **Frontend**: Electron 28+, React 19, TypeScript 5.3+, Vite 5, Tailwind CSS
- **Backend**: FastAPI, Python 3.11+, Uvicorn, AsyncIO
- **Database**: SQLCipher 4.5+ with FTS5 and JSON1 extensions
- **AI/ML**: scikit-learn 1.4+, XGBoost 2.0, spaCy 3.7
- **Security**: AES-256 encryption, bcrypt, PyJWT

## Getting Started

### Prerequisites

- Node.js 18+
- Python 3.11+
- SQLCipher development libraries

### Installation

1. Clone the repository
2. Run `npm install` to install dependencies
3. Run `pip install -r requirements.txt` to install Python dependencies
4. Run `npm run dev` to start the development environment

### Building for Production

1. Run `npm run build` to build both frontend and backend
2. Run `npm run package` to create distributable packages

## Project Structure
nlc-monitoring/
├── packages/
│ ├── desktop/ # Electron main process
│ ├── frontend/ # React application
│ ├── backend/ # FastAPI server
│ └── shared/ # Shared types and utilities
├── models/ # ML model files
├── database/ # SQLite database
├── documents/ # Encrypted document storage
├── backups/ # Automated backups
├── logs/ # Application logs
├── scripts/ # Deployment and maintenance
├── docs/ # Documentation
└── tests/ # Test suites

## License

Proprietary - For NLC internal use only
