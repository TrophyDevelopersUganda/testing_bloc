import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_bloc_concept/business_logic/cubit_bloc/counter_cubit.dart';
import 'package:testing_bloc_concept/presentation/screens/home_screen.dart';
import 'package:testing_bloc_concept/presentation/screens/second_screen.dart';
import 'package:testing_bloc_concept/presentation/screens/third_screen.dart';

class MyAppRouter {
  final CounterCubit _counterCubit = CounterCubit();
  Route? onGenerateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const HomeScreen(
                    title: 'Home Bloc Demo 2022',
                    color: Colors.blueAccent,
                  ),
                ));
      // break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const SecondScreen(
                    color: Colors.purpleAccent,
                    title: 'Second',
                  ),
                ));
      // break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const ThirdScreen(
                    color: Colors.greenAccent,
                    title: 'Third',
                  ),
                ));

      // break;
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
