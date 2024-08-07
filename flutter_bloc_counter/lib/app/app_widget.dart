import 'package:flutter/material.dart';
import 'package:flutter_bloc_counter/app/counter/view/counter_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Games',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const CounterPage(),
    );
  }
}
