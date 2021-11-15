import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/counter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _incrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).incrementCounter();
  }

  void _decrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).decrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context).getCounter;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => _decrementCounter(context),
            tooltip: 'Decrement',
            child: const Icon(Icons.do_not_disturb_on_outlined),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: () => _incrementCounter(context),
            tooltip: 'Increment',
            child: const Icon(Icons.add_circle_outline_rounded),
          ),
        ],
      ),
    );
  }
}
