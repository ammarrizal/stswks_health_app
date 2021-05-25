import 'package:flutter/material.dart';

class Cycling extends StatefulWidget {
  @override
  _CyclingState createState() => _CyclingState();
}

class _CyclingState extends State<Cycling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cycling'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
