import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBarTheme'),
        leading: const Icon(Icons.chevron_left_outlined),
        actionsIconTheme: const IconThemeData(color: Colors.red),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mail_lock),
          ),
          const Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
      body: const Column(),
    );
  }
}
