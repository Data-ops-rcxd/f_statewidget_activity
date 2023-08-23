import 'dart:math';

import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(
              onPressed: null, icon: Icon(Icons.refresh), key: Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(
                value: value,
                add: sum,
                remove: remove,
              ),
              W2(
                value: value,
              ),
              W3(
                value: value,
                add: sumplus,
                remove: removeplus,
              )
            ],
          ),
        ],
      )),
    );
  }

  void sum() {
    setState(() {
      value += 0.1;
      value = double.parse(value.toStringAsFixed(1));
    });
  }

  void remove() {
    setState(() {
      value -= 0.1;
      value = double.parse(value.toStringAsFixed(1));
    });
  }

  void sumplus() {
    setState(() {
      value += 1;
      value = double.parse(value.toStringAsFixed(1));
    });
  }

  void removeplus() {
    setState(() {
      value -= 1;
      value = double.parse(value.toStringAsFixed(1));
    });
  }
}
