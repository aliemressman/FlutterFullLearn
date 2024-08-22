import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      countValue = countValue + 1;
    } else {
      countValue = countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItems.welcomeTittle,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.red)),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_incrementButton(), _deicrenmentButton()],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            countValue.toString(),
            style: Theme.of(context).textTheme.displayMedium,
          )),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('hi');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deicrenmentButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
