import 'package:flutter/material.dart';

class ColorsLearn extends StatelessWidget {
  const ColorsLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: ColorsItem.porchase,
        child: const Text('helloo'),
      ),
    );
  }
}

class ColorsItem {
  static const porchase = Color(0xffEDBF61);
  static const sulu = Color.fromRGBO(198, 237, 97, 1);
}
