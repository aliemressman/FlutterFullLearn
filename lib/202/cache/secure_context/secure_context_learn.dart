import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum _Keys { token }

class SecureContextLearn extends StatefulWidget {
  const SecureContextLearn({super.key});

  @override
  State<SecureContextLearn> createState() => _SecureContextLearnState();
}

class _SecureContextLearnState extends State<SecureContextLearn> {
  final storage = const FlutterSecureStorage();

  String _title = '';

  void saveItems(String data) {
    setState(() {
      _title = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getSecureItems(); 
  }

  Future<void> getSecureItems() async {
    _title = await storage.read(key: _Keys.token.name) ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await storage.write(key: _Keys.token.name, value: _title);
        },
        child: const Text('save'),
      ),
      body: TextField(
        onChanged: saveItems,
      ),
    );
  }
}
