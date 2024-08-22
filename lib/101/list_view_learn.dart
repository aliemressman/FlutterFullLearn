import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(padding: EdgeInsets.zero, children: [
        FittedBox(
          child: Text(
            'Merhaba',
            style: Theme.of(context).textTheme.displayMedium,
            maxLines: 1,
          ),
        ),
        Container(color: Colors.red, height: 300),
        const Divider(),
        Container(color: Colors.white, height: 300),
        const Divider(),
        Container(color: Colors.green, height: 300),
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
      ]),
    );
  }
}
