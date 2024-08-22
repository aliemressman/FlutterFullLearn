import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextField(
              maxLength: 50,
              buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              inputFormatters: [TextProjectInput()._formatter],
              focusNode: focusNodeTextFieldOne,
              textInputAction: TextInputAction.go,
              decoration: _InputDecoration().emailInput,
              style: const TextStyle(color: Colors.deepOrange),
            ),
          ),
          TextField(focusNode: focusNodeTextFieldTwo)
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}

class TextProjectInput {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == 'a') {
      return oldValue;
    } else {
      return newValue;
    }
  });
}

class _InputDecoration {
  final emailInput = const InputDecoration(
    label: Text(
      LanguageItems.emailInput,
      selectionColor: Colors.red,
    ),
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
  );
}
