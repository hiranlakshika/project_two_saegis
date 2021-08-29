import 'package:flutter/material.dart';
import 'package:project_two/page_2.dart';
import 'package:project_two/page_3.dart';
import 'page_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10.0),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          InkWell(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Page 1'),
              ),
              color: Colors.green,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageOne()),
            ),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Page 2'),
              ),
              color: Colors.green,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageTwo()),
            ),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Page 3'),
              ),
              color: Colors.green,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageThree()),
            ),
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Page 4'),
              ),
              color: Colors.green,
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Page 5'),
              ),
              color: Colors.green,
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Page 6'),
              ),
              color: Colors.green,
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Page 7'),
              ),
              color: Colors.green,
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Page 8'),
              ),
              color: Colors.green,
            ),
            onTap: () {},
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
