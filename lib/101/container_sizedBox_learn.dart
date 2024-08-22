import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('aaa' * 250),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('bb' * 25),
          ),
          Container(
              constraints: const BoxConstraints(maxHeight: 200, minHeight: 10, maxWidth: 200, minWidth: 100),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(12),
              //margin: const EdgeInsets.fromLTRB(50, 25, 0, 0),
              //margin: EdgeInsets.only(left: 52, top: 60),
              decoration: ProjectUtility.boxDecoration,
              child: Text('aaaaaa' * 2)),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = const BoxDecoration(
    color: Color.fromARGB(255, 133, 242, 119),
    gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
    boxShadow: [BoxShadow(color: Color.fromARGB(255, 30, 233, 94), offset: Offset(0.5, 1), blurRadius: 22)],
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          color: const Color.fromARGB(255, 133, 242, 119),
          gradient: const LinearGradient(colors: [Colors.red, Colors.blue]),
          boxShadow: [const BoxShadow(color: Color.fromARGB(255, 30, 233, 94), offset: Offset(0.5, 1), blurRadius: 22)],
        );
}
