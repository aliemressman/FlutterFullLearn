import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.imgHeight = 150});
  final imgUrl = 'https://picsum.photos/seed/picsum/200/300';
  final double imgHeight;
  @override
  Widget build(BuildContext context) {
    return Image.network(imgUrl, height: imgHeight, fit: BoxFit.fill);
  }
}
