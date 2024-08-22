import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 300,
            child: PngImage(name: ImageItems().appleAndBook),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleAndBook = "AppleAndBook.jpg";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPad, fit: BoxFit.cover);
  }

  String get _nameWithPad => 'assets/$name';
}
