// Simple program that asks the user for their name and email, then prints it out.

#include <iostream>
#include <string>

using namespace std;

int main()
{
    string fName, lName, email;

    cout << "What is your first name? ";
    getline(cin, fName);

    cout << "What is your last name? ";
    getline(cin, lName);

    cout << "What is your email? ";
    getline(cin, email);

    cout << "\n\nYour name is: " << fName << ' ' << lName << "\nand your email is: " << email << endl;

    return 0;
}