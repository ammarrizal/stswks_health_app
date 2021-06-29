import 'package:flutter/material.dart';

class ConfigureRadius extends StatefulWidget {
  @override
  _ConfigureRadiusState createState() => _ConfigureRadiusState();
}

class _ConfigureRadiusState extends State<ConfigureRadius> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONFIGURE RADIUS',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff079cd8),
        centerTitle: true,
      ),
    );
  }
}
