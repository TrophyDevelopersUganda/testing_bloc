/*
 Copyright (c) 2021.  Trophy Developers Uganda [https://www.trophydevelopers.com/mobile-application-development-uganda/]. All Rights Reserved
 */

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> with HydratedMixin {
  CounterCubit()
      : super(const CounterState(counterValue: 0, wasChanged: false));

  void increment() => emit(
      CounterState(counterValue: state.counterValue + 1, wasChanged: true));

  void decrement() => emit(
      CounterState(counterValue: state.counterValue - 1, wasChanged: false));

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    // addError(
    // Exception("Couldn't write to the device storage!"), StackTrace.current);
    // return state.toMap();
  }

// @override
// void onChange(Change<CounterState> change) {
//   if (kDebugMode) {
//     print(change);
//   }
//   super.onChange(change);
// }
//
// @override
// void onError(Object error, StackTrace stackTrace) {
//   if (kDebugMode) {
//     print("$error, $stackTrace");
//   }
//   super.onError(error, stackTrace);
// }
}
