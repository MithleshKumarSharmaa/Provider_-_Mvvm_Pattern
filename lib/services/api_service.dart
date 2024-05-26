// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';
import '../models/product.dart';

class ApiService {
  final String baseUrl = "https://api.example.com";

  Future<User?> getUser(String userId) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$userId'));

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }

  Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/products'));

    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);
      return List<Product>.from(l.map((model) => Product.fromJson(model)));
    } else {
      throw Exception('Failed to load products');
    }
  }
}
