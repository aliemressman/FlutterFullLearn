import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.initialColor});
  final Color initialColor;

  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  final labelRedName = 'red';
  final labelYellowName = 'yellow';
  final labelBlueName = 'blue';
  Color? _backGroundColor;

  @override
  void initState() {
    super.initState();
    _backGroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.initialColor != oldWidget.initialColor) {
      changeBackGroundColor(widget.initialColor);
    }
  }

  void changeBackGroundColor(Color color) {
    setState(() {
      _backGroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: [
          BottomNavigationBarItem(icon: const _ContainerModel(containerColor: Colors.red), label: labelRedName),
          BottomNavigationBarItem(icon: const _ContainerModel(containerColor: Colors.yellow), label: labelYellowName),
          BottomNavigationBarItem(icon: const _ContainerModel(containerColor: Colors.blue), label: labelBlueName),
        ],
      ),
    );
  }

  void _colorOnTap(int value) {
    if (value == _myColors.red.index) {
      changeBackGroundColor(Colors.red);
    } else if (value == _myColors.yellow.index) {
      changeBackGroundColor(Colors.yellow);
    } else if (value == _myColors.blue.index) {
      changeBackGroundColor(Colors.blue);
    }
  }
}

enum _myColors { red, yellow, blue }

class _ContainerModel extends StatelessWidget {
  const _ContainerModel({required this.containerColor});
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(color: containerColor, width: 10, height: 10);
  }
}
