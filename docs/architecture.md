# NLC Monitoring Platform Architecture

## System Architecture

The system employs a modular, feature-based architecture with clear separation of concerns:
┌─────────────────────────────────────────────────────────┐
│ Desktop Application │
├─────────────────────────────────────────────────────────┤
│ Electron Main Process │
│ - Window Management - IPC Bridge │
│ - Native OS Integration - Auto-updater │
├─────────────────────────────────────────────────────────┤
│ Electron Renderer Process │
│ ┌──────────────────────────────────────────────────┐ │
│ │ React 19 Application │ │
│ │ - Feature Modules - Shared Components │ │
│ │ - State Management - Routing │ │
│ └──────────────────────────────────────────────────┘ │
├─────────────────────────────────────────────────────────┤
│ Local FastAPI Server │
│ ┌──────────────────────────────────────────────────┐ │
│ │ - REST API Endpoints - WebSocket Connections │ │
│ │ - Background Tasks - ML Pipeline │ │
│ └──────────────────────────────────────────────────┘ │
├─────────────────────────────────────────────────────────┤
│ Data Layer │
│ ┌─────────────┐ ┌──────────────┐ ┌─────────────┐ │
│ │ SQLCipher │ │ File Storage │ │ Model Store │ │
│ │ Database │ │ (Encrypted) │ │ (.pkl) │ │
│ └─────────────┘ └──────────────┘ └─────────────┘ │
└─────────────────────────────────────────────────────────┘

## Data Flow

1. User interactions trigger React components
2. Components dispatch actions through IPC to backend
3. FastAPI processes requests, performs ML inference
4. Results stored in encrypted database
5. Real-time updates pushed via WebSocket
6. UI updates reactively with new data

## Technology Stack

### Frontend Technologies
- Electron 28+
- React 19
- TypeScript 5.3+
- Vite 5
- Tailwind CSS 3.4
- Recharts/Chart.js
- Framer Motion
- React Query
- Zustand

### Backend Technologies
- FastAPI 0.104+
- Python 3.11+
- Uvicorn
- Pydantic v2
- AsyncIO
- Celery
- PyInstaller

### Database Solutions
- SQLCipher 4.5+
- FTS5 (Full-text search)
- WAL Mode (Write-Ahead Logging)
- JSON1 Extension
- ZLIB Compression

## Security Architecture

- AES-256 encryption for data at rest
- TLS 1.3 for data in transit
- Role-based access control
- Local authentication with bcrypt
- JWT tokens for session management
- Biometric authentication support
