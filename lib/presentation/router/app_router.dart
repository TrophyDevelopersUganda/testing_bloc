/*
 Copyright (c) 2021.  Trophy Developers Uganda. All Rights Reserved
 */

import 'package:flutter/material.dart';
import 'package:testing_bloc_concept/presentation/screens/home_screen.dart';
import 'package:testing_bloc_concept/presentation/screens/second_screen.dart';
import 'package:testing_bloc_concept/presentation/screens/settings_screen.dart';
import 'package:testing_bloc_concept/presentation/screens/third_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            title: "Home Screen",
            color: Colors.blueAccent,
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => const SecondScreen(
            title: "Second Screen",
            color: Colors.redAccent,
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => const ThirdScreen(
            title: "Thirst Screen",
            color: Colors.greenAccent,
          ),
        );
      case '/settings':
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(
            color: Colors.blue,
            title: 'Settings'
                '',
          ),
        );
      default:
        return null;
    }
  }
}
