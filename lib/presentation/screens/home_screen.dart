import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_bloc_concept/business_logic/cubit_bloc/counter_cubit.dart';

class HomeScreen extends StatefulWidget {
  final Color color;

  const HomeScreen({Key? key, required this.title, required this.color})
      : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocConsumer<CounterCubit, CounterState>(
              builder: (context, state) {
                if (state.counterValue < 4) {
                  return Text(
                    'Negative Life ' + state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (state.counterValue == state.counterValue) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 52.0),
                    child: Text(
                      'Your Lucky Number is: ' + state.counterValue.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  );
                } else if (state.counterValue % randomNumber == 0) {
                  return Text(
                    'Price your products in Even Numbers for quick Sales: ' +
                        state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
                return Text(
                  state.counterValue.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
              listener: (context, state) {
                if (state.wasChanged == true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Yes, You Added 4'),
                        duration: Duration(milliseconds: 300)),
                  );
                } else if (state.wasChanged == false) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Yes, You '
                        'Subtracted 4'),
                    duration: Duration(milliseconds: 300),
                  ));
                }
              },
            ),
            const SizedBox(
              height: 24,
            ),
            MaterialButton(
              color: widget.color,
              onPressed: () {
                Navigator.of(context).pushNamed('/second'
                    // MaterialPageRoute(
                    // builder: (_) => BlocProvider.value(
                    //   value: BlocProvider.of<CounterCubit>(context),
                    //   child: const SecondScreen(
                    //       title: 'Second Screen', color: Colors.deepPurple),
                    // )
                    // )
                    );
              },
              child: const Text('Go to Second Screen'),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: Text('${widget.title} #1'),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                    // context.bloc<CounterCubit>().decrement();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove_circle),
                ),
                FloatingActionButton(
                  // heroTag: Text('${widget.title} #2'),
                  onPressed: () {
                    // BlocProvider.of<CounterCubit>(context).increment();
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add_circle),
                ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     FloatingActionButton(
      //       heroTag: Text('${widget.title} #1'),
      //       onPressed: () {
      //         BlocProvider.of<CounterCubit>(context).decrement();
      //       },
      //       tooltip: 'Increment',
      //       child: const Icon(Icons.remove_circle),
      //     ),
      //     FloatingActionButton(
      //       heroTag: Text('${widget.title} #2'),
      //       onPressed: () {
      //         BlocProvider.of<CounterCubit>(context).increment();
      //       },
      //
      //       //,context.bloc<CounterCubit>().decrement();
      //       tooltip: 'Increment',
      //       child: const Icon(Icons.add_circle),
      //     ),
      //   ],
      // ),
    );
  }
}
