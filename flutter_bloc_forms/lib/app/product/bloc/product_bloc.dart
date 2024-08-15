import 'package:bloc/bloc.dart';

import '../model/product_model.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  Product _product = const Product.empty();

  ProductBloc()
      : super(
          ProductDefaultState(
            product: const Product.empty(),
          ),
        ) {
    on<ProductEvent>((event, emit) async {
      if (event is ProductEventUpdate) {
        _updateProduct(
            name: event.name,
            barCode: event.barCode,
            category: event.category,
            value: event.value,
            image: event.name);
        emit(
          ProductDefaultState(product: _product),
        );
      }
    });
  }
  Product get product => _product;
  _updateProduct({
    String? name,
    String? barCode,
    String? category,
    double? value,
    String? image,
  }) {
    _product = _product.copyWith(
      newName: name ?? _product.name,
      newBarCode: barCode ?? _product.barCode,
      newCategory: category ?? _product.category,
      newValue: value ?? _product.value,
      newImage: image ?? _product.image,
    );
  }
}
