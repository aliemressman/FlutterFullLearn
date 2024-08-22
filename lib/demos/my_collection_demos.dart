import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: (PaddingUtility().paddingTop / 3),
        child: ListView.builder(
            padding: PaddingUtility().paddingHorizontal,
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return _categoryCard(model: _items[index]);
            }),
      ),
    );
  }
}

// ignore: camel_case_types
class _categoryCard extends StatelessWidget {
  const _categoryCard({required CollectionModel model}) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 250,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
              )),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.price} eth'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 15);
  final paddingGeneral = const EdgeInsets.all(25.0);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 10);
}

class CollectionItems {
  late List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImages.projectImages, title: 'Abstract art1', price: 3.4),
      CollectionModel(imagePath: ProjectImages.projectImages, title: 'Abstract art2', price: 3.4),
      CollectionModel(imagePath: ProjectImages.projectImages, title: 'Abstract art3', price: 3.4),
      CollectionModel(imagePath: ProjectImages.projectImages, title: 'Abstract art4', price: 3.4),
    ];
  }
}

class ProjectImages {
  static const projectImages = 'assets/collection_image.jpeg';
}
