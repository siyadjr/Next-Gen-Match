import 'package:flutter/material.dart';
import 'package:next_gen_match/Features/auth/data/auth_services.dart';

class AuthProvider with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

Future<bool> signIn(String email, String password) async {
  _isLoading = true;
  notifyListeners();

  try {
    await AuthServices().signInUser(email, password);
    _isLoading = false;
    notifyListeners();
    return true;
  } catch (e) {
    print('Sign in failed: $e');
    _isLoading = false;
    notifyListeners();
    return false;
  }
}


  Future<bool> signUp(String email, String password) async {
   _isLoading = true;
  notifyListeners();

  try {
    await AuthServices().signUpUser(email, password);
    _isLoading = false;
    notifyListeners();
    return true;
  } catch (e) {
    print('Sign up failed: $e');
    _isLoading = false;
    notifyListeners();
    return false;
  }
  }
}
