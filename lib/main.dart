import 'package:flutter/material.dart';
import './secondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '📚 Knowledge sharing by Golf'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 150,
            width: 340,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("🌟 Count : $_counter times", style: TextStyle(fontSize: 35.0, color: Colors.blue)),
              SizedBox(height: 15.0),
              Text("Press the Plus button below\n to increat number", style: TextStyle(fontSize: 16.0, color: Colors.grey), textAlign: TextAlign.center),
            ]),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.lightBlue[100], spreadRadius: 3),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 50.0,
            width: 150.0,
            child: FlatButton(
                child: Text('Next Page ➤➤', style: TextStyle(fontSize: 18, color: Colors.white)),
                color: Colors.yellow[800],
                hoverColor: Colors.yellow[700],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.yellow[200])),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(
                                title: '🏳️‍🌈 National flags 🏳️‍🌈',
                              )));
                }),
          )
        ])),
        backgroundColor: Colors.lightBlue[50],
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: _incrementCounter));
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
