// auth_provider.dart
import 'package:flutter/material.dart';
import 'package:your_app_name/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  User? _user;

  User? get user => _user;

  Future<void> signInWithEmail(String email, String password) async {
    _user = await _authService.signInWithEmail(email, password);
    notifyListeners();
  }

  Future<void> signInWithGoogle() async {
    _user = await _authService.signInWithGoogle();
    notifyListeners();
  }

  Future<void> signInWithFacebook() async {
    _user = await _authService.signInWithFacebook();
    notifyListeners();
  }

  Future<void> signOut() async {
    await _authService.signOut();
    _user = null;
    notifyListeners();
  }
}
