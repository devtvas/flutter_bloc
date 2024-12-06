import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(counter: 5));

  void increaseBy(int value) {
    // Ex.: assim nao podemos mudar o estado: state.counter = 10;
    // Precisamos usar o emit para mudar o estado.
    emit(state.copyWith(
      counter: state.counter + value,
      transactionCount: state.transactionCount + 1,
    ));
  }

  void decreaseBy(int value) {
    emit(state.copyWith(
      counter: state.counter - value,
      transactionCount: state.transactionCount + 1,
    ));
  }

  void reset() {
    emit(state.copyWith(
      counter: 0,
    ));
  }
}
