import 'package:chatapp/features/auth/models/user_model.dart';
import 'package:flutter/material.dart';
//import 'package:chat_app/features/auth/models/user_model.dart';

class AuthViewModel extends ChangeNotifier {
  UserModel? _user;
  bool _isLoading = false;

  UserModel? get user => _user;
  bool get isLoading => _isLoading;

  Future<bool> login(String email, String password) async {
    _isLoading = true;
    notifyListeners();

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    _user = UserModel(id: '1', email: email, username: 'User');

    _isLoading = false;
    notifyListeners();

    return true;
  }

  Future<bool> signup(String email, String password, String username) async {
    _isLoading = true;
    notifyListeners();

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    _user = UserModel(id: '1', email: email, username: username);

    _isLoading = false;
    notifyListeners();

    return true;
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
