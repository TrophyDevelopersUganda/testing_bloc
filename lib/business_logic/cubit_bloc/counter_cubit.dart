import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

int max = 100;
int randomNumber = Random().nextInt(max);

class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
      : super(CounterState(
          counterValue: randomNumber,
          wasChanged: false,
        ));
  void increment() => emit(
      (CounterState(counterValue: state.counterValue + 4, wasChanged: true)));
  void decrement() => emit(
      (CounterState(counterValue: state.counterValue - 4, wasChanged: false)));
}
