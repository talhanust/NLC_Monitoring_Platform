#!/bin/bash

# NLC Monitoring Platform Setup Script

echo "Setting up NLC Monitoring Platform..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Please install Node.js 18+ and try again."
    exit 1
fi

# Check if Python is installed
if ! command -v python &> /dev/null && ! command -v python3 &> /dev/null; then
    echo "Python is not installed. Please install Python 3.11+ and try again."
    exit 1
fi

# Install root dependencies
echo "Installing root dependencies..."
npm install

# Install frontend dependencies
echo "Installing frontend dependencies..."
cd packages/frontend
npm install
cd ../..

# Install desktop dependencies
echo "Installing desktop dependencies..."
cd packages/desktop
npm install
cd ../..

# Install shared dependencies
echo "Installing shared dependencies..."
cd packages/shared
npm install
cd ../..

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Create necessary directories
echo "Creating directory structure..."
mkdir -p models database documents backups logs

echo "Setup complete! Run 'npm run dev' to start the development environment."
