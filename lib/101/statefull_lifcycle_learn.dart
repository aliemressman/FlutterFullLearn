import 'package:flutter/material.dart';

class StatefullLifcycleLearn extends StatefulWidget {
  const StatefullLifcycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifcycleLearn> createState() => _StatefullLifcycleLearnState();
}

class _StatefullLifcycleLearnState extends State<StatefullLifcycleLearn> {
  late String _message;
  late final bool _isOdd;

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += 'Tek';
    } else {
      _message += 'Cift';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
