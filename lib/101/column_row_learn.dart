import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.blue)),
                  Expanded(child: Container(color: Colors.green)),
                  Expanded(child: Container(color: Colors.pink)),
                ],
              )),
          const Spacer(flex: 2),
          const Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // defaultta max'tır. Birbirine yapışır.
              children: [
                Expanded(child: Text('aa')),
                Expanded(child: Text('aab')),
                Expanded(child: Text('aa')),
              ],
            ),
          ),
          const SizedBox(
            height: ProjectHight.projectHeight,
            child: Column(
              children: [
                Expanded(child: Text('Data')),
                Spacer(flex: 2),
                Expanded(child: Text('Data')),
                Expanded(child: Text('Data')),
                Expanded(child: Text('Data')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectHight {
  static const double projectHeight = 100;
}
