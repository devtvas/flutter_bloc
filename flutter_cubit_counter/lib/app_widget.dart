import 'package:flutter/material.dart';
import 'package:flutter_cubit_counter/config/router/app_router.dart';
import 'package:flutter_cubit_counter/config/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme().getTheme(),
      routerConfig: appRouter,
    );
  }
}
