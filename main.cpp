// Simple program that keeps multiplying a number by 2 until it reaches 2048, while printing 
// each step to the console.

#include <iostream>

int main() {
    std::cout << "This program will print out numbers being multiplied by 2\n" << std::endl;
    int number = 1;
    while (number < 2048) {
        std::cout << number << std::endl;
        number *= 2;
    }
    std::cout << number << std::endl;
}