part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counterValue;
  final bool wasChanged;
  const CounterState({
    required this.counterValue,
    required this.wasChanged,
  });

  @override
  // TO DO: implement props
  List<Object?> get props => [counterValue, wasChanged];
}
