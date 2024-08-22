import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  PaddingLearn({super.key});
  final ProjectPadding projectPadding = ProjectPadding();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding().pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(height: 100, width: 200, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(height: 100, width: 200, color: Colors.white),
            ),
            Padding(
              padding: projectPadding.pagePaddingTop + ProjectPadding().pagePaddingVertical,
              child: Text('Ali'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  final pagePaddingVertical = const EdgeInsets.symmetric(vertical: 50);
  final pagePaddingTop = const EdgeInsets.only(top: 20);
}
