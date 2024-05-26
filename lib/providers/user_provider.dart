// lib/providers/user_provider.dart
import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/api_service.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final ApiService _apiService = ApiService();

  User? get user => _user;

  Future<void> fetchUser(String userId) async {
    _user = await _apiService.getUser(userId);
    notifyListeners();
  }
}
 

