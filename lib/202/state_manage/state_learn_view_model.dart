import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/state_manage/state_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  bool isVisibility = false;
  bool isOpacity = false;

  @override
  void initState() {
    super.initState();
  }

  void changeVisible() {
    setState(() {
      isVisibility = !isVisibility;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}
