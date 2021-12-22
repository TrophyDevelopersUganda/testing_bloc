import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Trophy Developers Counter ',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const MyHomePage(title: 'Trophy Developers Counter Bloc App'),
      ),
    );
  }
}
