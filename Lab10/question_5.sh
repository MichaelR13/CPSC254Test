#!/bin/bash

# Define function to print menu options
print_menu() {
    echo ""
    echo "==================================="
    echo "         TANK RUNNER BASH          "
    echo "==================================="
    echo "  [0] Exit"
    echo "  [1] Project Introduction"
    echo "  [2] File Integrity Check Helper"
    echo "  [3] Dependency Check Helper"
    echo "  [4] Credits"
    echo "==================================="
    echo ""
}

# Print introduction info
echo "Welcome to the Project Main Menu."

# Print menu options
print_menu

# Prompt user to enter a menu option
read -p "Enter the number of your selection: " option
echo ""
echo "==================================="

# Loop through menu options until user chooses to exit
while [ $option -ne 0 ]; do
    case $option in
        1)
            echo "Project Introduction:"
            echo ""
            echo "The project at it’s core will be a 2D game that will utilize Python and the PyGame library to create essentially the entire game. Our intended game is meant to mimic those such as the Google dinosaur game, with some mechanics inspired by space invaders. Given our groups experience with PyGame and 2D game development, it is very possible to accomplish our intended game mechanics. On the creative side of development, there are various websites/software available that will make the creation of modes/sound effects/etc. much easier to create and import. A project such as this one heavily relies on proper workflow to ensure productivity and communication throughout our entire team. Below is a rough sketch on how we would like our game to function. The green in the sketch represents the bounds of the game, the red represents obstacles the user encounters, and the blue represents the user-controlled tank and it’s canon shooting. Like any other game’s development process, we are currently in it’s pre-production and features are subject to change as we progress."
            ;;
        2)
            echo "File Integrity Check Helper:"
            echo ""
            echo "[Insert file integrity check helper code here]"
            ;;
        3)
            echo "Dependency Check Helper:"
            echo ""
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
            ;;
        4)
            echo "Credits:"
            echo ""
            echo "THIS PROJECT WAS CREATED BY:"
            echo "  - Mario Linares and Michael Rojas"
            ;;
        *)
            echo "Invalid option. Please enter a valid option."
            echo ""
            ;;
    esac

    # Print menu options again
    print_menu

    # Prompt user to enter another menu option
    read -p "Enter the number of your selection: " option
    echo ""
    echo "==================================="
done

# Exit message
echo "Exiting Project Main Menu. Goodbye!"
echo ===================================