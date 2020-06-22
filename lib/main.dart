import 'Item_Demo_View.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: FlutterLogo()),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Text(
                    'Hello\nWelcome Back',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 40),
                  child: TextField(
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                    decoration: InputDecoration(
                        labelText: 'USERNAME',
                        labelStyle:
                            TextStyle(color: Colors.grey, fontSize: 20.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 40),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                        decoration: InputDecoration(
                            labelText: 'PASSWORD',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),
                      ),
                      Text(
                        'SHOW',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 30),
                  child: GestureDetector(
                    onTap: onSignInClick,
                    child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 / 2),
                            color: Colors.blue),
                        child: Text('SIGN IN')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 30),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('NEW USER? SIGN UP',
                            style: TextStyle(color: Colors.black)),
                        Text('FORGET PASSWORD',
                            style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onSignInClick() async {
    final value = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ItemDemoView(
                abc: 'Gia tri',
              )),
    );
    print(value);
  }
}
