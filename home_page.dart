import 'package:flutter/material.dart';
import 'package:test_app/page1.dart';
import 'package:test_app/page2.dart';
import 'package:test_app/page3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Demo'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Tab1'),
              Tab(text: 'Tab2'),
              Tab(text: 'Tab3'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
