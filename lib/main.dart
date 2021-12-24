import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_bloc_concept/screens/second_screen.dart';
import 'package:testing_bloc_concept/screens/third_screen.dart';

import 'business_logic/cubit_bloc/counter_cubit.dart';
import 'screens/home_screen.dart';

void main() {
  const counterState1 = CounterState(counterValue: 4, wasChanged: true);
  const counterState2 = CounterState(counterValue: 4, wasChanged: true);
  //! THIS SHOULD RETURN TRUE
  if (kDebugMode) {
    print(counterState1 == counterState2);
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trophy Developers Counter ',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        // home: BlocProvider<CounterCubit>(
        //   create: (context) => CounterCubit(),
        //   child: const HomeScreen(
        //       title: 'TD Bloc Demo 2021', color: Colors.redAccent),
        // ),
        routes: {
          '/': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const HomeScreen(
                  title: 'Home Bloc Demo 2022',
                  color: Colors.blueAccent,
                ),
              ),
          '/second': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const SecondScreen(
                  color: Colors.purpleAccent,
                  title: 'Second',
                ),
              ),
          '/third': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const ThirdScreen(
                  color: Colors.greenAccent,
                  title: 'Third',
                ),
              )
        },
      ),
    );
  }

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }
}
