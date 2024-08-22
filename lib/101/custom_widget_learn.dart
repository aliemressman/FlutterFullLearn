import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({super.key});
  final String tittle = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFullButton(title: tittle, onPressed: () {}),
            ),
          )),
          const SizedBox(height: 100),
          SizedBox(child: CustomFullButton(title: tittle, onPressed: () {})),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  final Color colorRed = Colors.red;
  final Color colorWhite = Colors.white;
}

class _PaddingUtility {
  static const normalPadding = const EdgeInsets.all(8.0);
  static const normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFullButton extends StatelessWidget {
  const CustomFullButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: _ColorsUtility().colorWhite, shape: StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: _PaddingUtility.normal2xPadding,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: _ColorsUtility().colorRed),
          ),
        ));
  }
}
