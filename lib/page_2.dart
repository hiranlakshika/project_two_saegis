import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  PageTwo({Key? key}) : super(key: key);
  List<String> _list = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'a',
    'b',
    'c',
    'd',
    'e',
    'a',
    'b',
    'c',
    'd',
    'e',
    'a',
    'b',
    'c',
    'd',
    'e',
    'a',
    'b',
    'c',
    'd',
    'e',
    'a',
    'b',
    'c',
    'd',
    'e'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 2.0,
              child: Container(
                height: 50.0,
                child: Center(
                    child: Text(
                  _list[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                color: Colors.deepOrange,
              ),
            );
          },
          itemCount: _list.length,
        ),
      ),
    );
  }
}
