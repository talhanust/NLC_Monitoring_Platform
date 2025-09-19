# Engineering Application Monorepo

A comprehensive engineering application built with modern technologies, featuring a desktop client, web frontend, API backend, and shared utilities.

## 🏗️ Architecture

This monorepo contains four main packages:

- **`packages/desktop`** - Electron desktop application
- **`packages/frontend`** - React web application  
- **`packages/backend`** - FastAPI Python backend
- **`packages/shared`** - Shared TypeScript utilities and types

## 🚀 Quick Start

### Prerequisites

- **Node.js** >= 18.0.0
- **npm** >= 9.0.0
- **Python** >= 3.11
- **Git**

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/engineering-app.git
   cd engineering-app
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up Python backend**
   ```bash
   cd packages/backend
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   pip install -r requirements-dev.txt
   cd ../..
   ```

### Development

Start all services in development mode:

```bash
npm run dev
```

Or start individual services:

```bash
# Frontend only
npm run dev:frontend

# Backend only  
npm run dev:backend

# Desktop only
npm run dev:desktop
```

## 📦 Package Details

### Desktop Application (`packages/desktop`)

Electron-based desktop client with:
- Main process and renderer process separation
- Auto-updater support
- Native OS integration
- Built with TypeScript and Vite

**Key Commands:**
```bash
cd packages/desktop
npm run dev      # Development mode
npm run build    # Build application
npm run dist     # Create distributable
```

### Frontend Application (`packages/frontend`)

React web application featuring:
- Modern React 18 with hooks
- TypeScript for type safety
- Tailwind CSS for styling
- Vite for fast development
- Vitest for testing

**Key Commands:**
```bash
cd packages/frontend
npm run dev      # Development server
npm run build    # Production build
npm run test     # Run tests
```

### Backend API (`packages/backend`)

FastAPI Python backend with:
- Async/await support
- Automatic API documentation
- Database integration with SQLAlchemy
- Authentication and authorization
- Background task processing

**Key Commands:**
```bash
cd packages/backend
source venv/bin/activate
npm run dev      # Development server
npm run test     # Run tests
npm run migrate  # Run database migrations
```

### Shared Utilities (`packages/shared`)

TypeScript library containing:
- Common types and interfaces
- Utility functions
- Validation schemas with Zod
- Constants and configurations

**Key Commands:**
```bash
cd packages/shared
npm run build    # Build library
npm run test     # Run tests
npm run dev      # Watch mode
```

## 🛠️ Development Tools

### Code Quality

- **ESLint** - Code linting with TypeScript support
- **Prettier** - Code formatting
- **TypeScript** - Static type checking
- **Husky** - Git hooks (optional)

**Commands:**
```bash
npm run lint        # Check linting
npm run lint:fix    # Fix linting issues
npm run format      # Format code
npm run format:check # Check formatting
```

### Testing

- **Vitest** - Frontend testing
- **Jest** - Shared package testing  
- **Pytest** - Backend testing

**Commands:**
```bash
npm run test        # Run all tests
npm run test:coverage # Test with coverage
```

## 🗂️ Project Structure

```
engineering-app/
├── packages/
│   ├── desktop/           # Electron desktop app
│   │   ├── src/
│   │   │   ├── main/      # Electron main process
│   │   │   └── renderer/  # Electron renderer process
│   │   ├── tsconfig.json
│   │   └── package.json
│   ├── frontend/          # React web app
│   │   ├── src/
│   │   │   ├── components/
│   │   │   ├── pages/
│   │   │   ├── hooks/
│   │   │   └── utils/
│   │   ├── public/
│   │   └── package.json
│   ├── backend/           # FastAPI backend
│   │   ├── src/
│   │   │   ├── api/
│   │   │   ├── core/
│   │   │   ├── models/
│   │   │   └── services/
│   │   ├── tests/
│   │   ├── requirements.txt
│   │   └── package.json
│   └── shared/            # Shared utilities
│       ├── src/
│       │   ├── types/
│       │   ├── utils/
│       │   ├── constants/
│       │   └── validators/
│       └── package.json
├── tsconfig.base.json     # Base TypeScript config
├── .eslintrc.js          # ESLint configuration
├── .prettierrc           # Prettier configuration
├── .gitignore            # Git ignore rules
├── package.json          # Root package configuration
└── README.md             # This file
```

## 🔧 Configuration

### Environment Variables

Create `.env` files in each package directory:

**Frontend (.env):**
```env
VITE_API_BASE_URL=http://localhost:8000
VITE_APP_NAME=Engineering App
```

**Backend (.env):**
```env
DATABASE_URL=postgresql://user:password@localhost/engineering_app
SECRET_KEY=your-secret-key-here
DEBUG=true
CORS_ORIGINS=http://localhost:3000,http://localhost:5173
```

**Desktop (.env):**
```env
MAIN_VITE_API_BASE_URL=http://localhost:8000
```

### Database Setup

1. **Install PostgreSQL** (recommended) or use SQLite for development
2. **Create database:**
   ```sql
   CREATE DATABASE engineering_app;
   ```
3. **Run migrations:**
   ```bash
   cd packages/backend
   npm run migrate
   ```

## 📚 API Documentation

When the backend is running, API documentation is available at:
- **Swagger UI**: http://localhost:8000/docs
- **ReDoc**: http://localhost:8000/redoc

## 🚢 Deployment

### Frontend Deployment
```bash
cd packages/frontend
npm run build
# Deploy dist/ folder to your hosting service
```

### Backend Deployment
```bash
cd packages/backend
# Use Docker, Heroku, or your preferred deployment method
```

### Desktop Distribution
```bash
cd packages/desktop
npm run dist:win    # Windows
npm run dist:mac    # macOS  
npm run dist:linux  # Linux
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push to branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- 📧 Email: your.email@example.com
- 🐛 Issues: [GitHub Issues](https://github.com/your-username/engineering-app/issues)
- 📖 Documentation: [Wiki](https://github.com/your-username/engineering-app/wiki)

## 🗺️ Roadmap

- [ ] Authentication system
- [ ] Real-time collaboration
- [ ] Advanced engineering calculations
- [ ] Data visualization components
- [ ] Export/import functionality
- [ ] Plugin system
- [ ] Mobile responsive design
- [ ] Offline support
