import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random.image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  static const double cardHeight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(bottom: cardHeight / 2, child: RandomImage()),
                  Positioned(
                    height: cardHeight,
                    bottom: 0,
                    width: cardHeight * 4,
                    child: Card(
                      shape: RoundedRectangleBorder(),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Spacer(flex: 6),
          ],
        ));
  }
}
