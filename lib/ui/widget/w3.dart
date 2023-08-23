import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.value, required this.remove, required this.add});
  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),
  final double value;
  final Function() remove;
  final Function() add;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$value',
          key: Key('W3Value'),
        ),
        IconButton(onPressed: () => add(), icon: const Icon(Icons.add), key: const Key('W3Add')),
        IconButton(onPressed: () => remove(), icon: Icon(Icons.remove), key: Key('W3Sub'))
      ],
    );
    ;
  }
}
