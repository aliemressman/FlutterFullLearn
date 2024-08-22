import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          _CustomCard(
            child: SizedBox(height: 200, width: 250, child: Center(child: Text('Emre'))),
          ),
          _CustomCard(
            child: SizedBox(height: 100, width: 250, child: Center(child: Text('Ali'))),
          )
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(65);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.child});

  final Widget child;
  final roundedRectangleBorder = const RoundedRectangleBorder(
      side: BorderSide(color: Colors.red, width: 5),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ));

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 65, 171, 107),
      margin: ProjectMargin.cardMargin,
      // shape: roundedRectangleBorder, -> burada yazmama gerek kalmaz çünkü main.dart ta tanımladım
      child: child,
    );
  }
}
