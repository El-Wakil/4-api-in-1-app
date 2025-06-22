import '../models/product.dart';

abstract class ProductState {
  const ProductState();
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;

  const ProductLoaded({required this.products});
}

class ProductError extends ProductState {
  final String message;

  const ProductError({required this.message});
}
