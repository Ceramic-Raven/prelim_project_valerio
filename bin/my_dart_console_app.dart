// Import necessary packages
// ignore_for_file: unused_import

import 'dart:io'; // For input/output operations
import 'package:riverpod/riverpod.dart'; // For Riverpod dependency injection
import 'package:my_dart_console_app/providers/providers.dart'; // Importing providers for dependency injection
import 'package:my_dart_console_app/services/user_service.dart'; // Importing the user service
import 'package:my_dart_console_app/models/user.dart'; // Importing the user model

void main() {
  // Create a ProviderContainer to manage dependencies
  final container = ProviderContainer();
  
  // Read the UserService from the provider container using Riverpod
  final userService = container.read(userServiceProvider);

  // Prompt user for their name
  print("Enter your name:");
  String? name = stdin.readLineSync(); // Read input from the console

  // Prompt user for their age
  print("Enter your age:");
  int? age = int.tryParse(stdin.readLineSync()!); // Read and parse input as an integer

  // Check if both name and age are provided
  if (name != null && age != null) {
    // Create a new User instance using the UserService
    User? user = userService.createUser(name, age);
    
    // If user creation is successful, display the user's information
    if (user != null) {
      userService.displayUser(user); // Call the displayUser method to show user info
    } else {
      print("Failed to create user."); // Handle case where user creation fails
    }
  } else {
    print("Invalid input."); // Handle invalid input case if name or age is not provided
  }
}