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
        title: Text(
          'WALKING',
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
