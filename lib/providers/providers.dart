import 'package:riverpod/riverpod.dart'; // Importing Riverpod package for dependency injection
import '../services/user_service.dart'; // Importing the UserService

// Define a provider for the UserService using Riverpod's Provider class
final userServiceProvider = Provider<UserService>((ref) {
  return UserService(); // Return a new instance of UserService when requested
});