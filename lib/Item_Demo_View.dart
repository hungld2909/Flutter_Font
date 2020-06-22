import 'package:flutter/material.dart';
class ItemDemoView extends StatefulWidget {
   final abc;
  final Function(int value) function;
  const ItemDemoView({Key key, this.abc, this.function}) : super(key: key);
  @override
  State<ItemDemoView> createState() => ItemDemoStateView();
}
class ItemDemoStateView extends State<ItemDemoView> {
  // final abc;
  // final Function(int value) function;
  // ItemDemoStateView({this.abc, this.function});
   get abc => widget.abc;
  @override
  Widget build(BuildContext context) {
    debugPrint(widget.abc);
    return Scaffold(body: Container(
      child: Column(
        children: <Widget>[
          Text(abc),
          Center(
            child: IconButton(
              onPressed: _onFunc,
              icon: Icon(Icons.dashboard),
            ),
          ),
        ],
      ),
    ));
  }
  void _onFunc() {
    Navigator.of(context).pop('adfafd');
  }
  void dilam(){
    print('di lam');
  }
}