/*
 Copyright (c) 2021.  Trophy Developers Uganda [https://www.trophydevelopers.com/mobile-application-development-uganda/]. All Rights Reserved
 */

part of 'internet_cubit.dart';

abstract class InternetState {
  @override
  String toString() {
    return 'InternetState{}';
  }
}

class InternetLoading extends InternetState {}

class InternetConnected extends InternetState {
  final ConnectionType connectionType;
  InternetConnected({required this.connectionType});
}

class InternetDisconnected extends InternetState {}
