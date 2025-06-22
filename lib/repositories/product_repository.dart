import 'package:dio/dio.dart';
import '../models/product.dart';

class ProductRepository {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://fakestoreapi.com/products/category';

  Future<List<Product>> getElectronics() async {
    try {
      final response = await _dio.get('$_baseUrl/electronics');
      final List<dynamic> data = response.data;
      return data.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load electronics: $e');
    }
  }

  Future<List<Product>> getJewelery() async {
    try {
      final response = await _dio.get('$_baseUrl/jewelery');
      final List<dynamic> data = response.data;
      return data.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load jewelery: $e');
    }
  }

  Future<List<Product>> getMensClothing() async {
    try {
      final response = await _dio.get('$_baseUrl/men\'s%20clothing');
      final List<dynamic> data = response.data;
      return data.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load men\'s clothing: $e');
    }
  }

  Future<List<Product>> getWomensClothing() async {
    try {
      final response = await _dio.get('$_baseUrl/women\'s%20clothing');
      final List<dynamic> data = response.data;
      return data.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load women\'s clothing: $e');
    }
  }
}
