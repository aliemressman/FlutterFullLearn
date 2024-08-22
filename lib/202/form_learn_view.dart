import 'dart:ffi';

import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: key,
        onChanged: () {},
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            DropdownButtonFormField<String>(
              validator: FormFieldValidator().isNotEmpty,
              items: const [
                DropdownMenuItem(child: Text('a')),
              ],
              onChanged: (value) {},
            ),
            Checkbox(value: true, onChanged: (value) {}),
            ElevatedButton(
              onPressed: () {
                if (key.currentState?.validate() ?? false) {}
              },
              child: const Text('save'),
            )
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage()._isNotEmpty;
  }
}

class ValidatorMessage {
  final String _isNotEmpty = 'Bu alan bos gecilemez';
}
