import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  late AnimationController controller;

  bool isVisibility = false;
  bool isOpacity = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: AnimatedDuration.slowDuration);
  }

  void _changeVisible() {
    setState(() {
      isVisibility = !isVisibility;
    });
  }

  void _changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _AnimatedCrossFade()),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _changeVisible();
        controller.animateTo(isVisibility ? 1 : 0);
      }),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                opacity: isOpacity ? 0 : 1, duration: AnimatedDuration.slowDuration, child: const Text("data")),
            trailing: IconButton(
              onPressed: () {
                _changeOpacity();
              },
              icon: const Icon(Icons.accessibility_outlined),
            ),
          ),
          AnimatedDefaultTextStyle(
            style:
                (isVisibility ? context.textTheme().bodySmall : context.textTheme().headlineLarge) ?? const TextStyle(),
            duration: AnimatedDuration.slowDuration,
            child: const Text('data'),
          ),
          AnimatedIcon(
            icon: AnimatedIcons.view_list,
            progress: controller,
          ),
          AnimatedContainer(
            duration: AnimatedDuration.slowDuration,
            height: isVisibility ? MediaQuery.of(context).size.height * 0.2 : 0,
            width: isVisibility ? MediaQuery.of(context).size.width * 0.2 : 0,
            color: Colors.purple,
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AnimatedCrossFade _AnimatedCrossFade() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      alignment: Alignment.topRight,
      secondChild: const SizedBox(),
      duration: AnimatedDuration.slowDuration,
      crossFadeState: isVisibility ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class AnimatedDuration {
  static const slowDuration = Duration(seconds: 1);
}
