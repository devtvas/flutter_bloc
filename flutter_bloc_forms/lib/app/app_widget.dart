import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_forms/app/product/bloc/product_bloc.dart';
import 'package:flutter_bloc_forms/app/product/pages/product_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forms with Blocks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<ProductBloc>(
        create: (_) => ProductBloc(),
        child: ProductPage(),
      ),
    );
  }
}
