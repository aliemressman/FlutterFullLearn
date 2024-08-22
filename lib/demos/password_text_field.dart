import 'package:flutter/material.dart';

class PasswordTextFi extends StatefulWidget {
  const PasswordTextFi({super.key, this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextFi> createState() => _PasswordTextFiState();
}

class _PasswordTextFiState extends State<PasswordTextFi> {
  final _obsureText = '#';
  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      obscuringCharacter: _obsureText,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: 'Password',
        prefix: const Text('   '),
        suffix: _onVisibilityButton(),
      ),
    );
  }

  IconButton _onVisibilityButton() {
    return IconButton(
        onPressed: () {
          _changeLoading();
        },
        icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off));
  }
}
