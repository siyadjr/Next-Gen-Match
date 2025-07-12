import 'package:flutter/material.dart';
import 'package:next_gen_match/Features/auth/data/auth_services.dart';

class AuthProvider with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> signIn(String email, String password) async {
    _isLoading = true;
    notifyListeners();

    // Simulated delay (replace with your login logic)
    await AuthServices().signUpUser(email, password);
    await Future.delayed(const Duration(seconds: 2));

    _isLoading = false;
    notifyListeners();
  }
}
