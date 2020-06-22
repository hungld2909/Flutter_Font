import 'package:flutter/material.dart';

class MyNextPage extends StatefulWidget {
  final String what;
  MyNextPage(this.what);

  @override
  _MyNextPageState createState() => new _MyNextPageState();
}

class _MyNextPageState extends State<MyNextPage> {
  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Next Page'),
        leading: new IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, "Result is here!")),
      ),
      body: new Center(
        child: new Text(
          'You hit the button in MyHomePage $this.widget.what time(s)',
        ),
      ),
    );
  }
}


void backToHome(BuildContext context, String result) {
    Navigator.pop(context, result);
}
