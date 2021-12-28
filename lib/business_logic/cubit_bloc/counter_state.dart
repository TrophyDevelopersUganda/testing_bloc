/*
 Copyright (c) 2021.  Trophy Developers Uganda. All Rights Reserved
 */

part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counterValue;
  final bool wasChanged;

  const CounterState({
    required this.counterValue,
    required this.wasChanged,
  });

  @override
  List<Object?> get props => [counterValue, wasChanged];

  Map<String, dynamic> toMap() {
    return {
      'counterValue': counterValue,
      'wasChanged': wasChanged,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'],
      wasChanged: map['wasChanged'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CounterState.fromJson(String source) =>
      CounterState.fromMap(json.decode(source));
}
