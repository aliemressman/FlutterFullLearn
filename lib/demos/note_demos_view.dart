import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({super.key});
  static NotesPadding notesPadding = NotesPadding();

  @override
  Widget build(BuildContext context) {
    const _tittleWidget = 'Create Your First Note';
    const _descraption = "Add a note ";
    const _buttonText = "Create a note ";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),
      body: Padding(
        padding: notesPadding.horizontalPadding,
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 50), child: ImageMethod()),
            const tittleWidget(tittle: _tittleWidget),
            Padding(padding: NotesPadding().verticalPadding, child: _SubTittleWidget(text: _descraption * 15)),
            const Spacer(),
            const _CreateButton(buttonText: _buttonText),
            TextButton(
              onPressed: () {},
              child: const Text(_buttonText),
            ),
            const SizedBox(height: ButtonHeight.buttonHeight)
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Image ImageMethod() => Image.asset("assets/AppleAndBook.jpg");
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    super.key,
    required String buttonText,
  }) : _buttonText = buttonText;

  final String _buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeight.buttonHeight,
        child: Center(
          child: Text(
            _buttonText,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _SubTittleWidget extends StatelessWidget {
  const _SubTittleWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
    );
  }
}

// ignore: camel_case_types
class tittleWidget extends StatelessWidget {
  const tittleWidget({super.key, required this.tittle});

  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class NotesPadding {
  final EdgeInsets horizontalPadding = const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeight {
  static const double buttonHeight = 50;
}
