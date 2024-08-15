part of 'product_bloc.dart';

abstract class ProductState {
  ProductState();
}

class ProductInitial extends ProductState {}

class ProductDefaultState extends ProductState {
  ProductDefaultState({required this.product});
  final Product product;
}
