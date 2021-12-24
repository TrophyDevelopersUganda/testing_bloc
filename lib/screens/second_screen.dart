import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/cubit_bloc/counter_cubit.dart';

class SecondScreen extends StatefulWidget {
  final Color color;
  final String title;
  const SecondScreen({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocConsumer<CounterCubit, CounterState>(
              builder: (context, state) {
                if (state.counterValue < 0) {
                  return Text(
                    'Negative Life ' + state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (state.counterValue % 2 == 0) {
                  return Text(
                    ' Magic ' + state.counterValue.toString(),
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
                Navigator.of(context).pushNamed('/'
                    // MaterialPageRoute(
                    // builder: (_) => BlocProvider.value(
                    //       value: BlocProvider.of<CounterCubit>(context),
                    //       child: const HomeScreen(
                    //           title: 'Home Screen', color: Colors.blueAccent),
                    //     )
                    // )
                    );
              },
              child: const Text('Go to Home Screen'),
            ),
            MaterialButton(
              color: widget.color,
              onPressed: () {
                Navigator.of(context).pushNamed('/third'
                    // MaterialPageRoute(
                    // builder: (_) => BlocProvider.value(
                    //       value: BlocProvider.of<CounterCubit>(context),
                    //       child: const ThirdScreen(
                    //           title: 'Third Screen', color: Colors.blueAccent),
                    //     ))
                    );
              },
              child: const Text('Go to Third Screen'),
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
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    // BlocProvider.of<CounterCubit>(context).increment();
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
