import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
          height: 100,
          color: Colors.pink,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            height: 50,
            color: Colors.blue,
          ),
        ),
        Positioned(
            height: 50,
            bottom: 0,
            width: 50,
            child: Container(
              color: const Color.fromARGB(255, 76, 20, 110),
            ))
      ]),
    );
  }
}
