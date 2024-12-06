import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_counter/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const _CubitCounterView(),
    );
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();

  @override
  Widget build(BuildContext context) {
    final counterState = context.watch<CounterCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Counter: ${counterState.transactionCount}'),
        actions: [
          IconButton(
              onPressed: () {
                context.read<CounterCubit>().reset();
              },
              icon: const Icon(Icons.refresh_outlined))
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text('Counter value: ${state.counter}');
          },
        ),
      ),
      floatingActionButton: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _IncrementButton(value: 3),
          SizedBox(height: 15),
          _IncrementButton(value: 2),
          SizedBox(height: 15),
          _IncrementButton(value: 1),
        ],
      ),
    );
  }
}

class _IncrementButton extends StatelessWidget {
  final int value;
  const _IncrementButton({required this.value});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'increment_$value',
      child: Text('+$value'),
      onPressed: () => context.read<CounterCubit>().increaseBy(value),
    );
  }
}
