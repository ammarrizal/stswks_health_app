import 'package:flutter/material.dart';

class OverallCounter extends StatefulWidget {
  @override
  _OverallCounterState createState() => _OverallCounterState();
}

class _OverallCounterState extends State<OverallCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overall Counter'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
    );
  }
}
