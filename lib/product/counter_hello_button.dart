import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => CounterHelloButtonState();
}

class CounterHelloButtonState extends State<CounterHelloButton> {
  int _countHello = 0;
  final String helloText = 'Merhaba';

  void _updateHello() {
    setState(() {
      ++_countHello;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _updateHello();
        },
        child: Text('$helloText $_countHello'));
  }
}
