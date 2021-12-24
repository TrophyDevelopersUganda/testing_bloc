// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:testing_bloc_concept/cubit_bloc/counter_cubit.dart';
//
// void main() {
//   group('CounterCubit', () {
//     CounterCubit? counterCubit;
//     setUp(() {
//       counterCubit = CounterCubit();
//     });
//     tearDown(() {
//       counterCubit?.close();
//     });
//     test(
//         'the initial state for the CounterCubit is CounterState'
//         '(counterValue : 4)', () {
//       expect(
//           counterCubit?.state,
//           const CounterState(
//             counterValue: 4,
//             wasChanged: false,
//           ));
//     });
//     blocTest(
//         'the Cubit (Small Part of the Bloc ) should emit a counterState'
//         '(counterValue: 1, wasChanged: true,when  cubit.wasChanged() '
//         'function s called',
//         build: () => counterCubit,
//         act: (cubit) => cubit?.decrement,
//         expect: () => [
//               const CounterState(
//                 counterValue: -4,
//                 wasChanged: false,
//               )
//             ]);
//     blocTest(
//         'the Cubit (Small Part of the Bloc ) should emit a counterState'
//         '(counterValue: 1, wasChanged: true,when  cubit.wasChanged() '
//         'function s called',
//         build: () => counterCubit,
//         act: (cubit) => cubit?.increment(),
//         expect: () => [
//               const CounterState(
//                 counterValue: -4,
//                 wasChanged: false,
//               )
//             ]);
//   }); // A way of organising Multiple Features
// }
