import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_counter/app/app_widget.dart';
import 'package:flutter_bloc_counter/app/counter/counter_observer.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const AppWidget());
}
