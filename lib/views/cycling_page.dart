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
        title: Text(
          'CYCLING',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff079cd8),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
