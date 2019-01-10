import 'package:flutter/material.dart';

class MyButton extends StatefulWidget{
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int _count = 0;

  void _addCount() {
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(_count.toString()),
        RaisedButton(
          color: Colors.red,
          shape: RoundedRectangleBorder(),
          onPressed: _addCount,
          child: Text('Plus One')
        )
      ],
    );
  }
}