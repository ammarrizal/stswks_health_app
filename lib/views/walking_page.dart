import 'package:flutter/material.dart';

class Walking extends StatefulWidget {
  @override
  _WalkingState createState() => _WalkingState();
}

class _WalkingState extends State<Walking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Walking'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
