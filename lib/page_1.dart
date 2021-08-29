import 'package:flutter/material.dart';
import 'package:project_two/tab_1.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab View'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('Tab 1'),
                icon: Icon(Icons.star),
              ),
              Tab(
                icon: Icon(Icons.wb_sunny),
                child: Text('Tab 2'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabOne(),
            Text('Second')
          ],
        ),
      ),
    );
  }
}
