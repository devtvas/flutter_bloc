import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_forms/app/product/bloc/product_bloc.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProductBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('new product'),
      ),
      body: Container(
        color: Colors.amberAccent,
        child: Form(
          key: _globalKey,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: BlocBuilder<ProductBloc, ProductState>(
              bloc: bloc,
              builder: (context, state) {
                var productState = (state as ProductDefaultState);
                var product = productState.product;
                return ListView(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Nome',
                      ),
                      onChanged: (name) =>
                          bloc.add(ProductEventUpdate(name: name)),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Categoria',
                      ),
                      onChanged: (category) =>
                          bloc.add(ProductEventUpdate(category: category)),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Imagem',
                      ),
                      onChanged: (image) =>
                          bloc.add(ProductEventUpdate(image: image)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Valor',
                      ),
                      onChanged: (value) => bloc
                          .add(ProductEventUpdate(value: double.parse(value))),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Codigo de Barras',
                      ),
                      onChanged: (barCode) =>
                          bloc.add(ProductEventUpdate(barCode: barCode)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          const Text('Detalhes do Produto'),
                          const SizedBox(height: 8),
                          Text('nome: ${product.name}'),
                          Text('categoria: ${product.category}'),
                          Text('cod. barras: ${product.barCode}'),
                          Text('valor: ${product.value.toString()}'),
                          Text('imagem: ${product.image}'),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
