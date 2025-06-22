import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import '../models/product.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final Dio _dio = Dio();

  ProductCubit() : super(ProductInitial());

  Future<void> loadElectronics() async {
    emit(ProductLoading());
    try {
      final response = await _dio.get(
        "https://fakestoreapi.com/products/category/electronics",
      );
      final List<dynamic> data = response.data;
      final products = data.map((json) => Product.fromJson(json)).toList();
      emit(ProductLoaded(products: products));
    } catch (e) {
      emit(ProductError(message: 'Failed to load electronics: $e'));
    }
  }

  Future<void> loadJewelery() async {
    emit(ProductLoading());
    try {
      final response = await _dio.get(
        "https://fakestoreapi.com/products/category/jewelery",
      );
      final List<dynamic> data = response.data;
      final products = data.map((json) => Product.fromJson(json)).toList();
      emit(ProductLoaded(products: products));
    } catch (e) {
      emit(ProductError(message: 'Failed to load jewelery: $e'));
    }
  }

  Future<void> loadMensClothing() async {
    emit(ProductLoading());
    try {
      final response = await _dio.get(
        "https://fakestoreapi.com/products/category/men's%20clothing",
      );
      final List<dynamic> data = response.data;
      final products = data.map((json) => Product.fromJson(json)).toList();
      emit(ProductLoaded(products: products));
    } catch (e) {
      emit(ProductError(message: 'Failed to load men\'s clothing: $e'));
    }
  }

  Future<void> loadWomensClothing() async {
    emit(ProductLoading());
    try {
      final response = await _dio.get(
        "https://fakestoreapi.com/products/category/women's%20clothing",
      );
      final List<dynamic> data = response.data;
      final products = data.map((json) => Product.fromJson(json)).toList();
      emit(ProductLoaded(products: products));
    } catch (e) {
      emit(ProductError(message: 'Failed to load women\'s clothing: $e'));
    }
  }
}
