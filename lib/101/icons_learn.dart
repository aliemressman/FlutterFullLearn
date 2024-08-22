import 'package:flutter/material.dart';

class IconsLearn extends StatelessWidget {
  IconsLearn({super.key});

  final IconSize iconsSize = IconSize();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: Theme.of(context).colorScheme.background,
            // Temadan okuduğumuz için arkaplan light olursa kendi kendine rengi değiştiriyor
            iconSize: 30,
          ),
          const SizedBox(height: 30),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: iconColors.blue,
            iconSize: iconsSize.iconSmall2x,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: iconColors.froly,
            iconSize: iconsSize.iconSmall,
          ),
        ],
      ),
    );
  }
}

class IconSize {
  final double iconSmall = 30;
  final double iconSmall2x = 60;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
  final Color blue = Colors.blue;
}
