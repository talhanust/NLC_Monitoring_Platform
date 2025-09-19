from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI(
    title="Engineering App API",
    description="Backend API for Engineering Application",
    version="1.0.0",
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000", "http://localhost:5173"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/")
async def root():
    return {"message": "Engineering App API is running!"}

@app.get("/health")
async def health_check():
    return {"status": "healthy", "service": "engineering-app-backend"}
