import 'package:acakdadu/rolerr2.dart';
import 'package:acakdadu/rolerr3.dart';
import 'package:acakdadu/rollerr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "dadu 1",),
                Tab(text: "dadu 2",),
                Tab(text: "dadu 3",),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              DiceRoller(),
              DiceRoller2(),
              DiceRoller3()
            ],
          ),
        ),
      ),
    );
  }
}