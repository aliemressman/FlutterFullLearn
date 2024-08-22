import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/demos/evry_login_screen.dart';
import 'package:flutter_full_learn/demos/my_collection_demos.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  final double _notchedValue = 10;
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _tabController.animateTo(1);
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(),
        body: _tabBarView(tabController: _tabController),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          shape: const CircularNotchedRectangle(),
          child: _myTabBar(tabController: _tabController),
        ),
      ),
    );
  }
}

class _tabBarView extends StatelessWidget {
  const _tabBarView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [ImageLearn(), ButtonLearn(), EvryLoginScreen(), ButtonLearn()]);
  }
}

class _myTabBar extends StatelessWidget {
  const _myTabBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.zero,
      onTap: (int index) {},
      controller: _tabController,
      tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList(),
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
