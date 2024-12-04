import '../models/user.dart'; // Importing the User model

// Define a UserService class to handle business logic related to users
class UserService {
  // Method to create a new user instance
  User? createUser(String name, int age) {
    return User(name: name, age: age); // Return a new User object with provided data
  }

  // Method to display user information in the console
  void displayUser(User user) {
    print('User Name: ${user.name}, Age: ${user.age}'); // Print user's details
  }
}