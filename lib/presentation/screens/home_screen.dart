/*
 Copyright (c) 2021.  Trophy Developers Uganda [https://www.trophydevelopers.com/mobile-application-development-uganda/]. All Rights Reserved
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_bloc_concept/business_logic/cubit_bloc/counter_cubit.dart';
import 'package:testing_bloc_concept/business_logic/cubit_bloc/internet_cubit.dart';
import 'package:testing_bloc_concept/constants/enums.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title, required this.color})
      : super(key: key);

  final String title;
  final Color color;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            BlocBuilder<InternetCubit, InternetState>(
              builder: (context, state) {
                if (state is InternetConnected &&
                    state.connectionType == ConnectionType.wifi) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Switched on Wi-Fi',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.blue,
                            ),
                      ),
                    ),
                  );
                } else if (state is InternetConnected &&
                    state.connectionType == ConnectionType.mobile) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Switched on Mobile Data',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.green,
                            ),
                      ),
                    ),
                  );
                } else if (state is InternetDisconnected) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Disconnected',
                        style: Theme.of(context).textTheme.headline3?.copyWith(
                              color: Colors.red,
                            ),
                      ),
                    ),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
            const Divider(
              height: 12,
            ),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state.wasChanged == true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Incremented!'),
                      duration: Duration(milliseconds: 300),
                    ),
                  );
                } else if (state.wasChanged == false) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Decremented!'),
                      duration: Duration(milliseconds: 300),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state.counterValue < 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Va Mu Negative Musiru gwe ' +
                          state.counterValue.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  );
                } else if (state.counterValue + 1 == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Olds only : ' + state.counterValue.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  );
                } else if (state.counterValue % 2 == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Eno Even Number: ' + state.counterValue.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  );
                } else if (state.counterValue == 3) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Ottera zinnya mirundi: ' +
                            (state.counterValue.toString()),
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        state.counterValue.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  );
                }
              },
            ),
            const SizedBox(
              height: 12,
            ),
            Builder(builder: (context) {
              final counterState = context.watch<CounterCubit>().state;
              final internetState = context.watch<InternetCubit>().state;
              if (internetState is InternetConnected &&
                  internetState.connectionType == ConnectionType.mobile) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Counter: ' +
                          counterState.counterValue.toString() +
                          ' Internet: Mobile ',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                );
              } else if (internetState is InternetConnected &&
                  internetState.connectionType == ConnectionType.wifi) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      ' Counter: ' +
                          counterState.counterValue.toString() +
                          ' Internet: Wifi ',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(
                    child: Text(
                      ' Counter: ' +
                          counterState.counterValue.toString() +
                          ' Internet : Sorry Disconnected ',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                );
              }
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: Text(widget.title),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove_circle_sharp),
                ),
                FloatingActionButton(
                  heroTag: Text('${widget.title} 2nd'),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add_alarm_rounded),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: MaterialButton(
                color: Colors.redAccent,
                child: const Text(
                  'Go to Second Screen',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/second',
                  );
                },
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: MaterialButton(
                color: Colors.black54,
                child: const Text(
                  'Go to Third Screen',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/third',
                  );
                },
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
