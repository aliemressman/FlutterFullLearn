import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/navigate_detail_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';
import 'package:flutter_full_learn/demos/my_collection_demos.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItems = [];
  void addSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                context,
                const NavigateDetailLearn(),
              );
              if (response == true) {
                addSelected(index);
              }
            },
            child: Placeholder(color: selectedItems.contains(index) ? Colors.green : Colors.red),
          );
        },
      ),
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        child: const Icon(Icons.golf_course),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) {
            return const NavigateDetailLearn();
          },
          fullscreenDialog: true,
          settings: const RouteSettings()),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
          builder: (context) {
            return const NavigateDetailLearn();
          },
          fullscreenDialog: true,
          settings: const RouteSettings()),
    );
  }
}
