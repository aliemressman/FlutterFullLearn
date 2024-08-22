import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            })),
            child: const Text('Bas'),
          ),
          const ElevatedButton(onPressed: null, child: Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded), color: Colors.green),
          FloatingActionButton(
            onPressed: () {
              // Servise İstek at
              // Sayfalar arası geçiş
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.all(10),
            ),
            onPressed: () {},
            child: const SizedBox(width: 200, child: Text('deneme')),
          ),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 25, right: 75, left: 75),
              child: Text('Place Pid', style: Theme.of(context).textTheme.headline5),
            ),
          ),
        ],
      ),
    );
  }
}
