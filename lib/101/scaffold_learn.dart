import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sizedBox_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Scaffold Example')),
        body: const Text('News and Chicks'),
        backgroundColor: Colors.purple,
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                      height: 100,
                    ));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: const Drawer(width: 200),
        bottomNavigationBar: Container(
          height: 200,
          decoration: ProjectContainerDecoration(),
          child: BottomNavigationBar(items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
          ]),
        ));
  }
}
