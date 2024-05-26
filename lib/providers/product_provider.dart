// lib/providers/product_provider.dart
import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/api_service.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  final ApiService _apiService = ApiService();

  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    _products = await _apiService.getProducts();
    notifyListeners();
  }
}
