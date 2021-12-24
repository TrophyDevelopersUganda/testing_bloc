import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_bloc_concept/presentation/router/app_router.dart';

import 'business_logic/cubit_bloc/counter_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MyAppRouter _myAppRouter = MyAppRouter();

  MyApp({Key? key}) : super(key: key);

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
        onGenerateRoute: _myAppRouter.onGenerateRoutes,
      ),
    );
  }
}
