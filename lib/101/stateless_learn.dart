import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TittleTextWidget(text: "ali"),
          _EmptyBox(),
          const TittleTextWidget(text: "ali2"),
          _EmptyBox(),
          const TittleTextWidget(text: "ali3"),
          _EmptyBox(),
          const TittleTextWidget(text: "ali4"),
          _EmptyBox(),
          const TittleTextWidget(text: "ali5"),
          _EmptyBox(),
          const TittleTextWidget(text: "ali6"),
          _EmptyBox(),
          const _CustomContainer()
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox _EmptyBox() => const SizedBox(height: 20);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.red),
    );
  }
}

class TittleTextWidget extends StatelessWidget {
  const TittleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline5);
  }
}
