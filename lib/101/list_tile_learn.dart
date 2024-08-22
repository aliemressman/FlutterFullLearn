import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random.image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: (const Icon((Icons.mail))),
                title: const RandomImage(),
                //Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
                dense: true,
                onTap: () {},
                subtitle: Container(
                    margin: const EdgeInsets.only(top: 8), height: 16, child: const Text('aliemre@gmail.com')),
                trailing: const SizedBox(
                    width: 20, child: Align(alignment: Alignment.bottomRight, child: Icon(Icons.back_hand))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
