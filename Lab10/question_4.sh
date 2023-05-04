#!/bin/bash

# Check if Python3 is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found"
    echo "You can install Python3 with the following command: sudo apt install python3"
    exit 1
fi

# Check if virtual environment is installed
if ! command -v python3 -m venv &> /dev/null
then
    echo "Virtual environment could not be found"
    echo "You can install virtual environment with the following command: sudo apt install python3-venv"
    exit 1
fi

# Check if PyGame module is installed
if ! command python3 -m pygame.version &> /dev/null
then
    echo "PyGame module could not be found"
    echo "You can install PyGame module with the following command: sudo apt-get install python3-pygame"
    exit 1
fi

# Exit message
echo "All dependencies are installed"