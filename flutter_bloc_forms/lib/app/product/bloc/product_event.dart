part of 'product_bloc.dart';

abstract class ProductEvent {
  const ProductEvent();
}

class ProductEventUpdate extends ProductEvent {
  String? name;
  String? barCode;
  String? category;
  double? value;
  String? image;

  ProductEventUpdate(
      {this.name, this.barCode, this.category, this.value, this.image});
}
