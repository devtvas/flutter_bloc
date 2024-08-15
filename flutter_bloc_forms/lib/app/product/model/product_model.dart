import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String barCode;
  final String category;
  final double value;
  final String image;

  const Product(
      {required this.name,
      required this.barCode,
      required this.category,
      required this.value,
      required this.image});

  const Product.empty({
    this.name = '',
    this.barCode = '',
    this.category = '',
    this.value = 0.0,
    this.image = '',
  });

  @override
  List<Object?> get props => [name, barCode, category, value, image];

  Product copyWith({
    String? newName,
    String? newBarCode,
    String? newCategory,
    double? newValue,
    String? newImage,
  }) {
    return Product(
      name: newName ?? name,
      barCode: newBarCode ?? barCode,
      category: newCategory ?? category,
      value: newValue ?? value,
      image: newImage ?? image,
    );
  }
}
