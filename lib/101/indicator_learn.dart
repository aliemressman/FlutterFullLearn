import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [CenterCircleProgress()],
        ),
        body: const LinearProgressIndicator());
  }
}

class CenterCircleProgress extends StatelessWidget {
  const CenterCircleProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      strokeWidth: 12,
    ));
  }
}
